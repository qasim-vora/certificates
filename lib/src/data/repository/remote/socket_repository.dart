import 'dart:convert';


import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/constants/api_constants.dart';
import 'package:social_app/constants/app_constants.dart';
import 'package:social_app/src/data/repository/local/local_repository.dart';
import 'package:social_app/src/domain/model/user_model/user_model.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

import '../../../../utils/logger_util.dart';
import '../../../domain/model/post_model/post_model.dart';



class SocketService  {
  LocalRepository? localRepository;


  SocketService({required this.localRepository}){
    logger.i('CALLED SocketService');
    _init();
  }

  io.Socket? _socket;

  UserModel? userModel;

  String userType = 'customer';
  final List<Map<String, dynamic>> _eventQueue = [];
  bool _isConnected = false;

  static const String connect = 'connect';
  static const String disconnect = 'disconnect';
  static const String connectError = 'connect_error';
  static const String onNewPost = 'new-post';
  static const String addUser = 'addUser';


  void _init() async{
    userModel = await localRepository?.getSession();
    if (userModel!=null) {

      _socket = io.io(ApiConstants.basURL,
        io.OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect()
            .build(),
      );

      connectSocket();


      logger.i('SOCKET URL - ${_socket?.io.uri}');
    }

    _socket?.on(connect, (_) {
      _isConnected = true;
      emitEvent(addUser, userModel!.userId);
      logger.d('User is connected ');
      _emitQueuedEvents();
    });

    _socket?.on(disconnect, (_) {
      logger.i('Disconnected from socket');
      _isConnected = false;
    });

    _socket?.on(connectError, (error) {
      logger.i('Connection Error: $error');
      _isConnected = false;
    });


    // all event logger
    // _socket?.onAny(
    //       (event, data) =>
    //       logger.i('onAny -- event: $event\ndata: ${jsonEncode(data)}'),
    // );
  }

  void connectSocket() {
    _socket?.connect();
  }

  void disconnectSocket() {
    _socket?.disconnect();
  }

  bool isConnected() {
    return _socket?.connected ?? false;
  }

  void emitEvent(String event, dynamic data) {
    if (isConnected()) {
      logger.i('emitting event $event, data - $data');
      _socket?.emit(event, data);
    } else {
      _queueEvent(event, data);
      if (!_isConnected) {
        logger.e('Socket disconnected, reconnecting...');
        connectSocket();
      }
    }
  }

  void onEvent(String event, Function(dynamic) handler) {
    logger.d('onEvent: EVENT - $event, handler - $handler');
    _socket?.on(event, handler);
  }

  void offEvent(String event) {
    _socket?.off(event);
    logger.i('offEvent -- $event');
  }

  void closeSocket() {
    _socket?.close();
    _socket?.disconnect();
    _socket = null;
  }

  // Event Emitters
  // void eventNearbyDriver(LatLng latLng) {
  //   Map<String, dynamic> reqData = {
  //     'latitude': latLng.latitude,
  //     'longitude': latLng.longitude,
  //     'maxDistance': AppSizeConstants.kNearbyDistance.toString(),
  //   };
  //
  //   // reqData as Map Object
  //   emitEvent(nearbyDriver, reqData);
  // }


  // Event Listeners
  void setListeners({
    Function(PostModel newPost)? onNewPostCreated,
  }) {
    logger.i('STARTED LISTENING EVENTS setListeners');
    /// get nearby driver
    onEvent(onNewPost, (data) {
      logger.i('STARTED LISTENING EVENTS $onNewPost = $data');
       if(data!=null){
           onNewPostCreated!.call(PostModel.fromJson(data));
       }


    });


  }

  void _queueEvent(String event, dynamic data) {
    _eventQueue.add({'event': event, 'data': data});
  }

  void _emitQueuedEvents() {
    for (var event in _eventQueue) {
      _socket?.emit(event['event'], event['data']);
    }
    _eventQueue.clear();
  }
}
