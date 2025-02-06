
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/constants/storage_constants.dart';
import 'package:social_app/di/app_providers.dart';
import 'package:social_app/src/data/repository/local/local_repository.dart';
import 'package:social_app/src/presentation/notifier/onboarding/state/onboarding_state.dart';

import '../../../../gen/assets.gen.dart';

part 'onboarding_notifier.g.dart';



@riverpod
class OnboardingNotifier extends _$OnboardingNotifier {
LocalRepository? localRepository;

  @override
  OnboardingState build() {
    localRepository = ref.read(localRepositoryProvider);
    state = OnboardingState();
    onchange(index: 0);
    return state;
  }

  void onchange({required int index}){

      if(index == 0){
        state = state.copyWith(
            content: "Watch interesting videos from around the world",
            index: index,
            path: Assets.image.png.onboarding1.path
        );
      }else if(index == 1){
        state = state.copyWith(
            content: "Find your friends and play together on social media",
            index: index,
            path: Assets.image.png.onboarding2.path
        );
      }else if(index == 2){
        state = state.copyWith(
            content: "Let's have fun with your friends & zuzu right now!",
            index: index,
            path: Assets.image.png.onboarding3.path
        );
        localRepository?.setData(StorageConstants.onBoard, true);

    }else{
        state = state.copyWith(
            index: index,
        );
      }
  }

}