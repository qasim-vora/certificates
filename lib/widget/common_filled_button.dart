import 'package:flutter/material.dart';

import '../constants/app_fonts.dart';
import '../theme/app_color.dart';
import '../utils/common_methods.dart';
import 'common_text.dart';


class CommonFilledButton extends StatelessWidget {
  final bool allowAnimation;
  final void Function()? onPressed;
  final String buttonText;
  final Color? buttonColor;
  final Color buttonTextColor;
  final double? fontSize;
  final FontWeight fontWeight;
  final double? buttonWidth;
  final double? buttonHeight;
  final Widget? iconWidget;

  const CommonFilledButton({
    super.key,
    this.allowAnimation = true,
    required this.onPressed,
    required this.buttonText,
    this.buttonTextColor = AppColors.whiteColor,
    this.buttonColor,
    this.iconWidget,
    this.fontSize,
    this.fontWeight = AppFontWeight.bold,
    this.buttonWidth,
    this.buttonHeight,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: () {
        CommonMethods().hideKeyboard(context);
        onPressed?.call();
      },

      style: FilledButton.styleFrom(
        backgroundColor: buttonColor ?? AppColors.primaryColor,
        minimumSize: Size(
          buttonWidth ?? double.infinity,
          buttonHeight ?? 58,
        ),

      ),
      icon: iconWidget,
      label: CommonText(
        text: buttonText,
        textAlign: TextAlign.center,
        color: buttonTextColor,
        fontSize: fontSize ?? AppFontSize.font_16,
        fontWeight: fontWeight,
      ),
    );
  }
}
