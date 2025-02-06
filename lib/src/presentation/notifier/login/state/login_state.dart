

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    @Default(null) TextEditingController? emailCon,
    @Default(null) TextEditingController? passwordCon,
    @Default(null) FocusNode? emailFocus,
    @Default(null) FocusNode? passwordFocus,
    @Default(true) bool show,

  }) = _LoginState;
}