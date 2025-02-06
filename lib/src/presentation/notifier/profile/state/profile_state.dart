import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/enums/loading_status.dart';
import 'package:social_app/src/domain/model/interest_model/interest_model.dart';
import 'package:social_app/src/domain/model/user_model/user_model.dart';

import '../../../../../enums/gender_type.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState({
    @Default(LoadStatus.initial) LoadStatus loadStatus,
    @Default(0) int step,
    @Default("") String profile,
    @Default(Gender.Other) Gender gender,
    @Default([]) List<InterestModel> interestList,
    @Default(null) TextEditingController? addressCon,
    @Default(null) TextEditingController? userNameCon,
    @Default(null) TextEditingController? fullNameCon,
    @Default(null) TextEditingController? dateCon,
    @Default(null) TextEditingController?  emailCon,
    @Default(null) DateTime? birthDate,
    @Default(null) UserModel? userModel,
    @Default(null) GlobalKey<FormState>? formKey,

  }) = _ProfileState;
}