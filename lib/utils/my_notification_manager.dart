import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../constants/app_constants.dart';
import 'logger_util.dart';



class MyNotificationManager {
  MyNotificationManager._();

  factory MyNotificationManager() => _instance;
  static final MyNotificationManager _instance = MyNotificationManager._();
  RemoteMessage? remoteMessage;
  NotificationSettings? settings;

  Future<void> init() async {
    _setFCMToken();
    _configure();
  }

  /// Create a [AndroidNotificationChannel] for heads up notifications
  late AndroidNotificationChannel channel;

  /// Initialize the [FlutterLocalNotificationsPlugin] package.
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  /// Function to ask user for push notification permissions and if provided, save FCM Token in persisted local storage.
  void _setFCMToken() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    /// requesting permission for [alert], [badge] & [sound]. Only for iOS
    settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    /// saving token only if user granted access.
    if (settings!.authorizationStatus == AuthorizationStatus.authorized) {
      String? token = await messaging.getToken();
      logger.e("Firebase Token - $token");
      AppConstants.firebaseToken = token!;
    }
  }

  /// Function to configure the functionality of displaying and tapping on notifications.
  void _configure() async {
    //FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    if (!kIsWeb) {
      channel = const AndroidNotificationChannel(
        'high_importance_channel', // id
        'High Importance Notifications', // title
        description: 'This channel is used for important notifications.',
        // description
        importance: Importance.high,
      );

      flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

      var initializationSettingsAndroid =
          const AndroidInitializationSettings('@mipmap/ic_launcher');
      var initializationSettingsIOS = const DarwinInitializationSettings();
      var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsIOS,
      );

      flutterLocalNotificationsPlugin.initialize(
        initializationSettings,
        onDidReceiveNotificationResponse: (payload) async {
          logger.e(
              'A new flutterLocalNotificationsPlugin.initialize event was published!');
          logger.e(
              "Notification Is In flutterLocalNotificationsPlugin.initialize");
          logger.e(
              "flutterLocalNotificationsPlugin.initialize  :  ${remoteMessage?.data}");
          if (remoteMessage != null) {
            handleNotification(remoteMessage!, AppState.foreground);
          }
        },
      );

      /// Create an Android Notification Channel.
      ///
      /// We use this channel in the `AndroidManifest.xml` file to override the
      /// default FCM channel to enable headzs up notifications.
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);

      /// Update the iOS foreground notification presentation options to allow
      /// heads up notifications.
      FirebaseMessaging.instance.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );
      await FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
    }

    /// For iOS only, setting values to show the notification when the app is in foreground state.
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    /// handler when notification arrives. This handler is executed only when notification arrives in foreground state.
    /// For iOS, OS handles the displaying of notification
    /// For Android, we push local notification
    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) async {
        remoteMessage = message;
        RemoteNotification? notification = remoteMessage?.notification;
        AndroidNotification? android = remoteMessage?.notification?.android;
        AppleNotification? apple = remoteMessage?.notification?.apple;

        logger.e(
            "Notification Is In onMessage remoteMessage == ${json.encode(remoteMessage!.data)}");
        logger.e(
            "Notification Is In onMessage notification == ${remoteMessage!.notification?.toMap()}");

        if (remoteMessage?.data != null) {
          logger.e("InOfTheIfCondition");
          logger.e("runtimeType : ${remoteMessage?.data.runtimeType}");

          logger.e("InOfTheIfCondition : ${remoteMessage?.data}");


          /// show notification
          if(Platform.isAndroid) {
            await flutterLocalNotificationsPlugin.show(
                notification.hashCode,
                notification?.title ?? "",
                notification?.body ?? "",
                payload: jsonEncode(remoteMessage?.data ?? {}),
                NotificationDetails(
                  android: AndroidNotificationDetails(
                    channel.id,
                    channel.name,
                    channelDescription: channel.description,
                    styleInformation: const BigTextStyleInformation(""),
                    // TODO add a proper drawable resource to android, for now using
                    //      one that already exists in example app.
                    // icon: 'ic_down',
                  ),
                  iOS: DarwinNotificationDetails(
                    presentAlert: true,
                    presentBadge: true,
                    subtitle: notification?.body,
                    // subtitle: remoteMessage?.data["body"],
                    presentSound: true,
                  ),
                )
            );
          }

        }

      },
    );

    /// handler when user taps on the notification.
    /// For iOS, it gets executed when the app is in [foreground] / [background] state.
    /// For Android, it gets executed when the app is in [background] state.
    FirebaseMessaging.onMessageOpenedApp.listen(
      (RemoteMessage message) {
        logger.e("onMessageOpenedApp ${message.data}");
        logger.e('A new onMessageOpenedApp event was published!');
        logger.e("Notification Is In onMessageOpenedApp");

        handleNotification(message, AppState.foreground);
      },
    );

    /// If the app is launched from terminated state by tapping on a notification, [getInitialMessage] function will return the
    /// [RemoteMessage] only once.
    FirebaseMessaging.instance.getInitialMessage().then(
      (RemoteMessage? message) {
        if (message != null) {
          logger.e("Notification Is In getInitialMessage");
          handleNotification(message, AppState.terminated);
        }
      },
    );
  }

  Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    // you need to initialize firebase first

    logger.e("Handling a background message: ${message.messageId}");
  }

  Future<void> handleNotification(
      RemoteMessage message, AppState appState) async {
    logger.e('handleNotification a background message ${message.messageId}');
    logger.e(
        'handleNotification a background message ${message.notification!}');
    logger.e('handleNotification a background message ${message.data}');

  }


}

enum AppState { foreground, background, terminated }
