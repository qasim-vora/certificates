import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_app/constants/app_fonts.dart';
import 'package:social_app/router/navigation_methods.dart';
import 'package:social_app/src/presentation/notifier/signup/sign_up_notifeir.dart';
import 'package:social_app/widget/app_text_field.dart';
import 'package:social_app/widget/common_text.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../theme/app_color.dart';
import '../../../../widget/common_filled_button.dart';

class SignUpScreen extends ConsumerWidget {
   const SignUpScreen({super.key});


  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final state = ref.watch(signUpNotifierProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Form(
            key: state.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SafeArea(child: SizedBox(height: 50,)),
                  const SizedBox(height: 50,),
                  const CommonText(
                    text: "Create your\nAccount",
                    fontWeight: AppFontWeight.bold,
                    fontSize: AppFontSize.h1,
                  ),

                  const SizedBox(height: 40,),

                  CommonTextField(
                      textEditingController: state.emailCon,
                      focusNode: state.emailFocus,
                      filledColor: AppColors.lightEmptyFilledColor,
                      hintText: "Email",
                      validationMessage: "Please enter Email",
                      prefixIcon: Assets.image.svg.message.path,
                  ),
                  const SizedBox(height: 15,),
                  CommonTextField(
                      textEditingController: state.passwordCon,
                      focusNode: state.passwordFocus,
                      filledColor: AppColors.lightEmptyFilledColor,
                      hintText: "Password",
                      validationMessage: "Please enter password",
                      suffixIcon: Assets.image.svg.eyeClose.path,
                      prefixIcon: Assets.image.svg.lock.path,
                  ),

                  const SizedBox(height: 25,)
            ,              CommonFilledButton(
                    onPressed: () {
                      if(state.formKey!.currentState!.validate()){
                        ref.read(signUpNotifierProvider.notifier).doSignUp();
                      }
                    },
                    buttonText: "Sign Up",
                  ),
                  const SizedBox(height: 20,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(height: 40,),
                      Row(
                        children: [
                          Expanded(child: Divider(color: AppColors.hintColor.withOpacity(0.4),)),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: CommonText(
                              text: "or continue with",
                              fontWeight: AppFontWeight.semiBold,
                              color: AppColors.hintColor,
                              fontSize: AppFontSize.font_12,
                            ),
                          ),
                          Expanded(child: Divider(color: AppColors.hintColor.withOpacity(0.4),)),
                        ],
                      ),
                      const SizedBox(height: 25,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(13),
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color: AppColors.greyColor
                                )
                            ),
                            child: Assets.image.svg.google.svg(),
                          ),
                          Container(
                            padding: const EdgeInsets.all(13),
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color: AppColors.greyColor
                                )
                            ),
                            child: Assets.image.svg.apple.svg(),
                          ),
                          Container(
                            padding: const EdgeInsets.all(13),
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color: AppColors.greyColor
                                )
                            ),
                            child: Assets.image.svg.fb.svg(),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                                text: 'Already have an account? ',
                                style: TextStyle(
                                    color: AppColors.filledColor
                                )

                            ),
                            TextSpan(text: ' Sign in!',
                                recognizer: TapGestureRecognizer()..onTap = () => context.pushNamed(Routes.login),
                                style: const TextStyle(
                                    color: AppColors.primaryColor
                                )
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                    ],
                  )
                ],
            ),
          ),
        ),
      ),
    );
  }
}
