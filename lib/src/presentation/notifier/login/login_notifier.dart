import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/constants/app_constants.dart';
import 'package:social_app/constants/storage_constants.dart';
import 'package:social_app/di/app_providers.dart';
import 'package:social_app/router/navigation_methods.dart';
import 'package:social_app/src/data/repository/remote/remote_repository.dart';
import 'package:social_app/src/domain/model/saved_post/saved_post.dart';
import 'package:social_app/src/domain/model/user_model/user_model.dart';
import 'package:social_app/src/presentation/notifier/login/state/login_state.dart';
import 'package:social_app/utils/loader_util/loading_dialog.dart';
import 'package:social_app/utils/snackbar_widget.dart';

import '../../../data/repository/local/local_repository.dart';

part 'login_notifier.g.dart';

@riverpod
class LoginNotifier extends _$LoginNotifier {
RemoteRepository? remoteRepository;
LocalRepository? localRepository;

  @override
  LoginState build() {
    remoteRepository = ref.read(remoteRepositoryProvider);
    localRepository = ref.read(localRepositoryProvider);
    state = LoginState(
      emailCon: TextEditingController(text: "kasim@gmail.com"),
      passwordCon: TextEditingController(text: "1234"),
      passwordFocus: FocusNode(),
      emailFocus: FocusNode(),
    );
    //addListener();

    print("object");
    print(AppConstants.firebaseToken);
    return state;
  }

  void addListener() {
    state.emailFocus?.addListener(
          (){
        if(state.emailFocus!.hasFocus){
          state = state.copyWith(show: false);
        }else{
          state = state.copyWith(show: true);
        }
      },
    );

    state.passwordFocus?.addListener(
          (){
        if(state.passwordFocus!.hasFocus){
          state = state.copyWith(show: false);
        }else{
          state = state.copyWith(show: true);
        }
      },
    );



  }


  Future<void> doLogin()async{
     try{
       AppConstants.globalKey.currentContext!.loading.show();
       var res = await remoteRepository?.login(
           email: state.emailCon!.text.trim(),
           password: state.passwordCon!.text.trim()
       );
       AppConstants.globalKey.currentContext!.loading.hide();
       if(res!.success){
         UserModel model = UserModel.fromJson(res.jsonData);
        localRepository?.setSession(model);
        AppConstants.userModel = model;
        localRepository?.setData(StorageConstants.token, res.bearerToken);
         await getSavedPost();
        if((model.username).isNotEmpty){
          AppConstants.globalKey.currentContext!.popAllAndPush(Routes.bottomNav);
        }else{
          AppConstants.globalKey.currentContext!.popAllAndPush(Routes.completeProfile);
        }
         showToast(AppConstants.globalKey.currentContext!,res.message);

       }else{
         showToast(AppConstants.globalKey.currentContext!,res.message,success: false);
       }
     }catch(e){
       AppConstants.globalKey.currentContext!.loading.hide();
       showToast(AppConstants.globalKey.currentContext!,e.toString(),success: false);
     }
  }

  Future<void> getSavedPost()async{
   //  try{
       AppConstants.globalKey.currentContext!.loading.show();
       var res = await remoteRepository?.getUserSavedPosts(
           userId: AppConstants.userModel!.userId,
       );
       AppConstants.globalKey.currentContext!.loading.hide();
       if(res!.success){
         SavedPostModel model = SavedPostModel.fromJson(res.jsonData);
        localRepository?.setUserSavedPost(model);
        AppConstants.savedPostModel = model;
       }else{
         showToast(AppConstants.globalKey.currentContext!,res.message,success: false);
       }
     // }catch(e){
     //   // AppConstants.globalKey.currentContext!.loading.hide();
     //   showToast(AppConstants.globalKey.currentContext!,e.toString(),success: false);
     // }
  }

}