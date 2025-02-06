import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/enums/screen_state.dart';

import '../../../../../gen/assets.gen.dart';

part 'onboarding_state.freezed.dart';

@freezed
class OnboardingState with _$OnboardingState {
  factory OnboardingState({
    @Default("") String content,
    @Default(0) int index,
    @Default("") String path

  }) = _OnboardingState;
}