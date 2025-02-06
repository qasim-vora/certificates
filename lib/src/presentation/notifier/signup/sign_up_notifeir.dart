import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/router/navigation_methods.dart';
import 'package:social_app/src/presentation/notifier/signup/state/sign_up_state.dart';
import 'package:social_app/utils/loader_util/loading_dialog.dart';

import '../../../../constants/app_constants.dart';
import '../../../../constants/storage_constants.dart';
import '../../../../di/app_providers.dart';
import '../../../../utils/snackbar_widget.dart';
import '../../../data/repository/local/local_repository.dart';
import '../../../data/repository/remote/remote_repository.dart';
import '../../../domain/model/user_model/user_model.dart';

part 'sign_up_notifeir.g.dart';



@riverpod
class SignUpNotifier extends _$SignUpNotifier {
  RemoteRepository? remoteRepository;
  LocalRepository? localRepository;


  @override
  SignUpState build() {
    remoteRepository = ref.read(remoteRepositoryProvider);
    localRepository = ref.read(localRepositoryProvider);
    state = SignUpState(
      emailCon: TextEditingController(),
      formKey: GlobalKey<FormState>(),
      passwordCon: TextEditingController(),
      passwordFocus: FocusNode(),
      emailFocus: FocusNode(),
    );
    addListener();
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


  Future<void> doSignUp()async{
   try{
      AppConstants.globalKey.currentContext!.loading.show();
      var res = await remoteRepository?.signUp(
          email: state.emailCon!.text.trim(),
          password: state.passwordCon!.text.trim()
      );
      AppConstants.globalKey.currentContext!.loading.hide();
      if(res!.success){
        localRepository?.setSession(UserModel.fromJson(res.jsonData));
        localRepository?.setData(StorageConstants.token, res.bearerToken);

        AppConstants.globalKey.currentContext!.popAllAndPush(Routes.completeProfile);
        showToast(AppConstants.globalKey.currentContext!,res.message);

      }else{
        showToast(AppConstants.globalKey.currentContext!,res.message,success: false);
      }
    }catch(e){
      showToast(AppConstants.globalKey.currentContext!,e.toString(),success: false);
    }
  }

}