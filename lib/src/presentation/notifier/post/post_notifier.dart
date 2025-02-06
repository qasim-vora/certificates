import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/di/app_providers.dart';
import 'package:social_app/router/navigation_methods.dart';
import 'package:social_app/src/data/repository/remote/remote_repository.dart';
import 'package:social_app/src/domain/model/user_model/user_model.dart';
import 'package:social_app/src/presentation/notifier/camera/camera_notifier.dart';
import 'package:social_app/src/presentation/notifier/media_notifier/media_notifier.dart';
import 'package:social_app/src/presentation/notifier/post/state/post_state.dart';
import 'package:social_app/utils/common_methods.dart';
import 'package:social_app/utils/file_ext.dart';
import 'package:social_app/utils/loader_util/loading_dialog.dart';

import '../../../../constants/app_constants.dart';
import '../../../../utils/snackbar_widget.dart';
import '../../../data/repository/local/local_repository.dart';

part 'post_notifier.g.dart';



@riverpod
class PostNotifier extends _$PostNotifier {
  RemoteRepository? remoteRepository;
  LocalRepository? localRepository;

  @override
  PostState build(){
    remoteRepository = ref.read(remoteRepositoryProvider);
    localRepository = ref.read(localRepositoryProvider);
    var pickedFile = ref.read(mediaNotifierProvider).selected;
    var capturedFile = ref.read(cameraNotifierProvider).filePath?.file;
    state = PostState(media: capturedFile!=null ? [capturedFile] : pickedFile,desCon: TextEditingController());
     return state;
  }


  /// create post
  void addPost() async{


    AppConstants.globalKey.currentContext!.loading.show();
    UserModel? user = await localRepository?.getSession();
    FormData formData = FormData.fromMap({
       "postype": state.media.first.fileType == FileType.image ? "1" : "2",
       "allowComments": state.allowComments,
       "auther": user!.userId,
       "description": state.desCon!.text.trim(),
       "location": "",
       "postFile": await MultipartFile.fromFile(state.media.first.path),
    });

    var res = await remoteRepository?.addPost(formData: formData);
    AppConstants.globalKey.currentContext!.loading.hide();


    if(res!.success){

        AppConstants.globalKey.currentContext!.popAllAndPush(Routes.bottomNav);
        showToast(AppConstants.globalKey.currentContext!,res.message);
    }else{
      showToast(AppConstants.globalKey.currentContext!,res.message,success: false);
    }

  }

  void toggleSwitch(){
     state = state.copyWith(allowComments: !state.allowComments);
  }





}