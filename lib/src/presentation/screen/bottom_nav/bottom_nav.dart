import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:social_app/router/navigation_methods.dart';
import 'package:social_app/src/presentation/notifier/bottom_nav/bottom_nav_notifier.dart';
import 'package:social_app/theme/app_color.dart';
import 'package:social_app/utils/common_methods.dart';

import '../../../../constants/app_fonts.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../widget/common_text.dart';

class BottomNavScreen extends ConsumerWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final state = ref.watch(bottomNavNotifierProvider);
    return Scaffold(
      body: state.screen,
      extendBody: true,

      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              topLeft: Radius.circular(10.0),),
          color: AppColors.blackColor,
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          
              bottomNavItems(index: 0, text: "Home", ref: ref, enabled: Assets.image.svg.homeFilled.path, disabled: Assets.image.svg.home.path),
              bottomNavItems(index: 1, text: "Discover", ref: ref, enabled: Assets.image.svg.discoveryFilled.path, disabled: Assets.image.svg.discovery.path),
          
              Transform.translate(
                offset: const Offset(0, -4),
                child: InkWell(
                  onTap: () async {
                    CommonMethods.askPermission(
                      permission: Permission.camera,
                      whichPermission: "LocaleKeys.camera.tr",
                    ).then((value) {
                      if (value) {
                        if (!context.mounted) return;
                        context.pushNamed(Routes.cameraScreen);
                      }
                    });
                  },
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                      radius: 20,
                      child: Assets.image.svg.plus.svg(),
                    ),
                  ),
                ),
              ),
          
              bottomNavItems(index: 2, text: "inbox", ref: ref, enabled: Assets.image.svg.chatFilled.path, disabled: Assets.image.svg.chat.path),
              bottomNavItems(index: 3, text: "Profile", ref: ref, enabled: Assets.image.svg.unionFilled.path, disabled: Assets.image.svg.union.path),
          
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomNavItems({
    required int index,
    required String text,
    required WidgetRef ref,
    required String enabled,
    required String disabled,
  }) {
    final state = ref.watch(bottomNavNotifierProvider);
    return InkWell(
      onTap: (){
        ref.read(bottomNavNotifierProvider.notifier).changeIndex(index: index);
      },
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Padding(
              padding: const EdgeInsets.only(bottom: 5.0,top: 20,left: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                      state.index == index ? enabled : disabled
                  ),
                  const SizedBox(height: 5,),
                   CommonText(
                    text: text,
                    fontWeight: AppFontWeight.bold,
                    fontSize: AppFontSize.font_10,
                    color: state.index == index ? AppColors.primaryColor : AppColors.whiteColor,
                  )
                ],
              ),
            ),
    );
  }
}
