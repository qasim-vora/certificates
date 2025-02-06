import 'dart:io';

import 'package:flutter/material.dart';
import 'package:social_app/src/presentation/screen/bottom_nav/bottom_nav.dart';
import 'package:social_app/src/presentation/screen/camera/camera_screen.dart';
import 'package:social_app/src/presentation/screen/home/home_screen.dart';
import 'package:social_app/src/presentation/screen/login/login_screen.dart';
import 'package:social_app/src/presentation/screen/media/media_screen.dart';
import 'package:social_app/src/presentation/screen/post/post_screen.dart';
import 'package:social_app/src/presentation/screen/profile/complete_profile_screen.dart';
import 'package:social_app/src/presentation/screen/register/sign_up_screen.dart';

import '../enums/animation_type.dart';
import '../src/presentation/screen/onboarding/onboarding_screen.dart';
import '../src/presentation/screen/splash/splash_screen.dart';

part 'app_routes.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    late Map<String, dynamic> arguments;

    if (settings.arguments != null) {
      arguments = settings.arguments as Map<String, dynamic>;
    }

    switch (settings.name) {
      /// splash
      case Routes.splash:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SplashScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.onboarding:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const OnboardingScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.signUp:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SignUpScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.login:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.home:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const HomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );


      case Routes.completeProfile:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
          const CompleteProfileScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.bottomNav:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
          const BottomNavScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.cameraScreen:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
          const CameraScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );

      case Routes.mediaScreen:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
          const MediaScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );
      case Routes.postScreen:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
          const PostScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return slideTransition(animation, child);
          },
        );
      default:
        return null;
    }
  }
}

/// slider transition
SlideTransition slideTransition(
  Animation<double> animation,
  Widget child, {
  AnimationType animationType = AnimationType.rightToLeft,
}) {
  Offset begin;

  switch (animationType) {
    case AnimationType.rightToLeft:
      begin = const Offset(1.0, 0.0);
    case AnimationType.leftToRight:
      begin = const Offset(-1.0, 0.0);
    case AnimationType.topToBottom:
      begin = const Offset(0.0, -1.0);
    case AnimationType.bottomToTop:
      begin = const Offset(0.0, 1.0);
  }

  const Offset end = Offset.zero;
  const Cubic curve = Curves.ease;

  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  return SlideTransition(
    position: animation.drive(tween),
    child: child,
  );
}
