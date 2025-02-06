import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_app/enums/screen_state.dart';
import 'package:social_app/router/navigation_methods.dart';
import 'package:social_app/src/presentation/notifier/splash/splash_notifier.dart';
import '../../../../gen/assets.gen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
       final state =  ref.watch(splashNotifierProvider);

       if(state.screenState == ScreenState.done && state.path.isNotEmpty){
         WidgetsBinding.instance.addPostFrameCallback((_){
           context.pushReplacementNamed(state.path);
         });

       }

        return Scaffold(
          body: Center(child: Assets.image.svg.logo.svg()),
        );
      },
    );
  }
}
