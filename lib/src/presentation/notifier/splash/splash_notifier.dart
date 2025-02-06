
import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/constants/app_constants.dart';
import 'package:social_app/constants/storage_constants.dart';
import 'package:social_app/di/app_providers.dart';
import 'package:social_app/router/app_pages.dart';
import 'package:social_app/src/data/repository/local/local_repository.dart';
import 'package:social_app/src/data/repository/remote/remote_repository.dart';
import 'package:social_app/src/domain/model/user_model/user_model.dart';
import 'package:social_app/src/presentation/notifier/splash/state/splash_state.dart';

import '../../../../enums/screen_state.dart';

part 'splash_notifier.g.dart';



@riverpod
class SplashNotifier extends _$SplashNotifier {
LocalRepository? localRepository;

  @override
  SplashState build() {
    localRepository = ref.read(localRepositoryProvider);
    startTimer();
    return SplashState();
  }

  void startTimer(){
     Future.delayed(const Duration(seconds: 3),).then((_) async{
       bool showOnboard = await localRepository?.getData(StorageConstants.onBoard) ?? false;
       UserModel? userModel = await localRepository?.getSession();
       AppConstants.userModel = userModel;

       String path ;
       if(showOnboard){
         path = Routes.onboarding;
       }else if(userModel == null){
         path = Routes.login;
       }
       else{
         // if(userModel.username.isNotEmpty){
            path = Routes.bottomNav;
         // }else{
         //  path = Routes.completeProfile;
       //  }

       }

        state = state.copyWith(path: path,screenState: ScreenState.done,);
     });

  }
}