import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme{
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightScaffoldColor,

  );

  static final darkTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.lightScaffoldColor
  );
}