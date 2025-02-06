

import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/services/api_service/api_service.dart';
import 'package:social_app/src/data/repository/remote/remote_repository.dart';
import 'package:social_app/src/data/repository/remote/remote_repository_impl.dart';
import 'package:social_app/src/domain/model/post_model/post_model.dart';
import 'package:social_app/src/domain/model/saved_post/saved_post.dart';
import 'package:social_app/src/domain/model/user_model/user_model.dart';
import 'package:social_app/src/presentation/notifier/camera/camera_notifier.dart';

import '../constants/api_constants.dart';
import '../constants/storage_constants.dart';
import '../firebase_options.dart';
import '../services/api_service/api_interceptor.dart';
import '../src/data/repository/local/local_repository.dart';
import '../src/data/repository/local/local_repository_impl.dart';
import '../src/data/repository/remote/socket_repository.dart';
import '../utils/my_notification_manager.dart';
part 'app_providers.g.dart';

@riverpod
void mainInit (MainInitRef ref) async{

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Hive.initFlutter();
  await Hive.openBox(StorageConstants.boxName);

  Hive.registerAdapter(UserModelImplAdapter());
  Hive.registerAdapter(SavedPostModelImplAdapter());
  Hive.registerAdapter(PostModelImplAdapter());
  await ref.read(notificationManagerProvider).init();
}

@riverpod
Dio apiClient(ApiClientRef ref){
  Dio dio = Dio(
    BaseOptions(
      // connectTimeout: const Duration(seconds: 5),
      // receiveTimeout: const Duration(seconds: 5),
    ),

  )..interceptors.add(ApiInterceptors());
  return dio;
}

@Riverpod(keepAlive: true)
SocketService socketService(SocketServiceRef ref){
  final localRepository = ref.read(localRepositoryProvider);
  return SocketService(localRepository: localRepository);
}


@riverpod
ApiServices apiServices(ApiServicesRef ref){
  final dioClient = ref.read(apiClientProvider);
  return ApiServices(dioClient,baseUrl: ApiConstants.basURL);
}

@riverpod
RemoteRepository remoteRepository(RemoteRepositoryRef ref){
  final apiServices = ref.read(apiServicesProvider);
  return RemoteRepositoryImpl(apiServices: apiServices);
}


@riverpod
LocalRepository localRepository(_){
  return LocalRepositoryImpl();
}

@riverpod
MyNotificationManager notificationManager(_){
  return MyNotificationManager();
}

