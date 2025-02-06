
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  factory SignUpState({
    @Default(null) TextEditingController? emailCon,
    @Default(null) TextEditingController? passwordCon,
    @Default(null) FocusNode? emailFocus,
    @Default(null) FocusNode? passwordFocus,
    @Default(true) bool show,
    @Default(null) GlobalKey<FormState>? formKey,

  }) = _SignUpState;
}