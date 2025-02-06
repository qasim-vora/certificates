import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/enums/gender_type.dart';
import 'package:social_app/enums/loading_status.dart';
import 'package:social_app/router/navigation_methods.dart';
import 'package:social_app/src/domain/model/interest_model/interest_model.dart';
import 'package:social_app/src/domain/model/user_model/user_model.dart';
import 'package:social_app/src/presentation/notifier/profile/state/profile_state.dart';
import 'package:social_app/src/presentation/screen/splash/splash_screen.dart';
import 'package:social_app/utils/loader_util/loading_dialog.dart';

import '../../../../constants/app_constants.dart';
import '../../../../di/app_providers.dart';
import '../../../../enums/pich_image.dart';
import '../../../../utils/common_methods.dart';
import '../../../../utils/logger_util.dart';
import '../../../../utils/snackbar_widget.dart';
import '../../../data/repository/local/local_repository.dart';
import '../../../data/repository/remote/remote_repository.dart';

part 'profile_notifier.g.dart';


@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  RemoteRepository? remoteRepository;
  LocalRepository? localRepository;
  File? profile;
  UserModel? user;


  @override
  ProfileState build() {
    remoteRepository = ref.read(remoteRepositoryProvider);
    localRepository = ref.read(localRepositoryProvider);

    state = ProfileState(
      addressCon: TextEditingController(),
      userNameCon: TextEditingController(),
      fullNameCon: TextEditingController(),
      formKey: GlobalKey<FormState>(),
      dateCon: TextEditingController(),
    );
    getAllInterest();
    setData();
    return state;
  }

  void getAllInterest() async {
    //try{
    state = state.copyWith(
        loadStatus: LoadStatus.loading,
        interestList: AppConstants.dummyInterestData);
    var res = await remoteRepository?.getAllInterest();

    if (res!.success) {
      List<InterestModel> list =
          (res.jsonData as List).map((i) => InterestModel.fromJson(i)).toList();

      state =
          state.copyWith(loadStatus: LoadStatus.success, interestList: list);
    } else {
      state = state.copyWith(loadStatus: LoadStatus.failure, interestList: []);
      showToast(AppConstants.globalKey.currentContext!, res.message,
          success: false);
    }
    // }catch(e){
    //   showToast(AppConstants.globalKey.currentContext!,e.toString(),success: false);
    // }
  }

  void onChipSelect({required int i}) {
    List<InterestModel> list = state.interestList.toList();

    list[i] = list[i].copyWith(isSelected: !(list[i].isSelected ?? false));

    state = state.copyWith(interestList: list);
  }

  void changeGender(Gender gender) {
    state = state.copyWith(gender: gender);
  }

  void handleBack() {
    if (state.step <= 2 && state.step >= 0) {
      state = state.copyWith(step: state.step - 1);
    } else {
      AppConstants.globalKey.currentContext!.popAllAndPush(Routes.login);
    }
  }

  void onDateChange(String date) { 
    state = state.copyWith(dateCon: TextEditingController(text: date),birthDate:DateFormat("dd/MM/yyyy").parse(date));
  }

  void changeIndex({required bool validate}) {
    if (state.step == 0) {
      if (validate) {
        state = state.copyWith(
          step: 1,
        );
      } else {
        List<InterestModel> list = state.interestList.toList();
        list = list.map((model) {
          return model = model.copyWith(isSelected: false);
        }).toList();
        state = state.copyWith(step: 1, interestList: list);
      }
    } else if (state.step == 1) {
      if (validate) {
        state = state.copyWith(
          step: 2,
        );
      } else {
        state = state.copyWith(step: 2, gender: Gender.Other);
      }
    } else if (state.step == 2) {
      if (validate) {
        state = state.copyWith(
          step: 3,
        );
      } else {
        state = state.copyWith(step: 3, birthDate: null, dateCon: TextEditingController());
      }
    } else if (state.step == 3) {
      state = state.copyWith(
        step: 3,
      );
      if(state.formKey!.currentState!.validate()){
        updateData();
      }
    }
  }

  void choseImage({required PickImageType pickImageType}) async {
    bool isEnable = await CommonMethods.askPermission(
      permission: pickImageType == PickImageType.camera
          ? Permission.camera
          : await CommonMethods.getGalleryPermission(),
      whichPermission: pickImageType.name.toUpperCase(),
    );

    if (isEnable) {
      // pick image
      final XFile? imageFile = await ImagePicker().pickImage(
        source: pickImageType == PickImageType.camera
            ? ImageSource.camera
            : ImageSource.gallery,
        imageQuality: 65,
      );

      // image validation
      if (imageFile != null) {
        if (imageFile.path.toLowerCase().endsWith("jpg") ||
            imageFile.path.toLowerCase().endsWith("png") ||
            imageFile.path.toLowerCase().endsWith("jpeg") ||
            imageFile.path.toLowerCase().endsWith("heic")) {
          bool isValidImage = true;
          //await CommonMethods.imageSize(imageFile);

          if (isValidImage) {
            profile = File(imageFile.path);
            UserModel? model = state.userModel;
            model = model!.copyWith(profilePhoto: "");
            state = state.copyWith(profile: imageFile.path,userModel: model);
          } else {
            state = state.copyWith(profile: imageFile.path);
          }
        } else {}
      }
    }
  }

  void updateData() async {
  try {
    FormData formData = FormData.fromMap({
      if (state.gender != Gender.Other) "gender": state.gender.name,
      if (state.birthDate != null) "birthDate": state.birthDate
          ?.toIso8601String(),
      if (state.fullNameCon!.text.isNotEmpty)"fullName": state.fullNameCon!.text
          .trim(),
      if (state.userNameCon!.text.isNotEmpty)"username": state.userNameCon!.text
          .trim(),
      if (state.addressCon!.text.isNotEmpty)"address": state.addressCon!.text
          .trim(),
      if(profile != null)"profilePic": await MultipartFile.fromFile(
          profile!.path),
    });


    for (int i = 0; i < state.interestList.length; i++) {
      if (state.interestList[i].isSelected ?? false) {
        formData.fields.add(
            MapEntry("intrest[$i]", state.interestList[i].interestId));
      }
    }
    AppConstants.globalKey.currentContext!.loading.show();
    var res = await remoteRepository!.updateProfile(
      formData: formData,
      userId: user!.userId,
    );
    AppConstants.globalKey.currentContext!.loading.hide();

    if (res.success) {
      showToast(AppConstants.globalKey.currentContext!, res.message,);
      await localRepository?.setSession(UserModel.fromJson(res.jsonData));
      AppConstants.globalKey.currentContext!.popAllAndPush(Routes.bottomNav);
    } else {
      showToast(
          AppConstants.globalKey.currentContext!, res.message, success: false);
    }
  }catch(e){
    showToast(
        AppConstants.globalKey.currentContext!, e.toString(), success: false);
  }
  }

  void setData() async{
   user = await localRepository?.getSession();
    state = state.copyWith(emailCon: TextEditingController(text: user?.email),userModel: user);
  }
}

