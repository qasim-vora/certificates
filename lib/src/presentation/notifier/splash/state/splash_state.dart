
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/enums/screen_state.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  factory SplashState({
    @Default(ScreenState.initial) ScreenState? screenState,
    @Default("") String path,

  }) = _SplashState;
}