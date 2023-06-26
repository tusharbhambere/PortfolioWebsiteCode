import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:mysite/app/core/app_constant.dart';

class AppTheme {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return isDarkTheme ? ThemeColors.lightTheme : ThemeColors.darkTheme;
  }
}

class ThemeColors {
  const ThemeColors._();
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    primaryColor: AppConstant.primaryColor,
    scaffoldBackgroundColor: AppConstant.lightBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      backgroundColor: AppConstant.lightBackgroundColor,
    ),
    textTheme: TextTheme(
      labelLarge: TextStyle(
        color: AppConstant.lightTextColor,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    primaryColor: AppConstant.primaryColor,
    scaffoldBackgroundColor: const Color(0xFF00040F),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      labelLarge: TextStyle(
        color: AppConstant.darkTextColor,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppConstant.darkBackgroundColor,
    ),
  );
  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;
}

extension ThemeExtras on ThemeData {
  Color get navBarColor => brightness == Brightness.light
      ? const Color(0xffF0F0F0)
      : const Color(0xFF00040F);
  //
  Color get textColor => brightness == Brightness.light
      ? const Color(0xFF403930)
      : const Color(0xFFFFF8F2);
  //
  Color get secondaryColor => const Color(0xFFFE53BB);
  //
  Gradient get serviceCard => brightness == Brightness.light
      ? AppConstant.grayWhite
      : AppConstant.grayBack;

  //
  Gradient get contactCard => brightness == Brightness.light
      ? AppConstant.grayWhite
      : AppConstant.contactGradi;
}
