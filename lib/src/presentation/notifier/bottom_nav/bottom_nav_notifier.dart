

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/constants/api_constants.dart';
import 'package:social_app/constants/app_constants.dart';
import 'package:social_app/src/presentation/notifier/bottom_nav/state/bottom_nav_state.dart';
import 'package:social_app/src/presentation/screen/home/home_screen.dart';
import 'package:social_app/src/presentation/screen/user/user_screen.dart';

part 'bottom_nav_notifier.g.dart';

@riverpod
class BottomNavNotifier extends _$BottomNavNotifier {

  @override
  BottomNavState build(){
    return BottomNavState();
  }

  void changeIndex({required int index}){

    if(index == 0){
      state = state.copyWith(index: index,screen: const HomeScreen());
    }else if(index == 3){
      state = state.copyWith(index: index,screen:  UserScreen(id: AppConstants.userModel!.userId,));
    }else{
      state = state.copyWith(index: index,screen: const HomeScreen());
    }


  }
}