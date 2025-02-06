
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_app/constants/app_fonts.dart';
import 'package:social_app/router/navigation_methods.dart';
import 'package:social_app/src/presentation/notifier/onboarding/onboarding_notifier.dart';
import 'package:social_app/theme/app_color.dart';
import 'package:social_app/widget/common_text.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../widget/common_filled_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final state = ref.watch(onboardingNotifierProvider);
          if(state.index == 3){
            WidgetsBinding.instance.addPostFrameCallback((_){
              context.pushReplacementNamed(Routes.login);
            });
          }
         return Padding(
           padding: const EdgeInsets.all(20.0),
           child: Column(

              children: [
                const Spacer(),
               Image.asset(state.path),
                const Spacer(),
               CommonText(
                   text : state.content,
                   fontSize: AppFontSize.h3,
                   textAlign: TextAlign.center,
                   fontWeight: AppFontWeight.bold,
               ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(int i = 0;i<3;i++)...[
                     Container(
                       margin: const EdgeInsets.only(right: 5),
                       decoration: BoxDecoration(
                         color: state.index == i ?  AppColors.primaryColor : AppColors.greyColor.withOpacity(0.3),
                         borderRadius: BorderRadius.circular(20)
                       ),
                       height: 8,
                       width: state.index == i ? 32 : 8,
                     )
                    ],
                  ],
                ),
                const Spacer(),
                CommonFilledButton(
                  onPressed: () {
                    ref.read(onboardingNotifierProvider.notifier).onchange(index: state.index+1);
                  },
                  buttonText: state.index==2 ? "Get started" : "Next",
                ),
                const SizedBox(height: 20,)
              ],
            ),
         );
        },
      ),
    );
  }
}
