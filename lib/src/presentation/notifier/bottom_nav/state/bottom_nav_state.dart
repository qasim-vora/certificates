import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/src/presentation/screen/home/home_screen.dart';

part 'bottom_nav_state.freezed.dart';

@freezed
class BottomNavState with _$BottomNavState {
  factory BottomNavState({
    @Default(0) int index,
    @Default(HomeScreen()) Widget screen,

  }) = _BottomNavState;
}