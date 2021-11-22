import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:aviao/core/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static const String appFontFamily = "SF";

  const AppTheme._();
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: AppColors.lightBackgroundColor,
    primaryColor: AppColors.lightPrimaryColor,
    fontFamily: appFontFamily,
    textTheme: textTheme(),
    appBarTheme: appBarTheme(),

    // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: lightAccentColor),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static TextTheme textTheme() {
    return TextTheme(
      headline1: const TextStyle(
          color: LightColors.darkColor,
          fontSize: 18,
          fontWeight: FontWeight.bold),
      headline4: TextStyle(
        color: LightColors.whiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 26.sp,
        height: 1.3,
      ),
      bodyText1: TextStyle(color: AppColors.kTextColor),
      bodyText2: TextStyle(color: AppColors.kTextColor),
    );
  }

  static AppBarTheme appBarTheme() {
    return const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: LightColors.deepDarkColor),
      titleTextStyle: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      // brightness: Brightness.light,
    );
  }

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: AppColors.darkBackgroundColor,
    primaryColor: AppColors.darkPrimaryColor,
    // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: darkAccentColor),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  // get the current mode of device, dark or light
  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance!.window.platformBrightness;

  // static setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
  //   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //     statusBarColor: Colors.transparent,
  //     statusBarIconBrightness:
  //         themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
  //     systemNavigationBarIconBrightness:
  //         themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
  //     systemNavigationBarColor: themeMode == ThemeMode.light
  //         ? AppColors.lightBackgroundColor
  //         : AppColors.darkBackgroundColor,
  //     systemNavigationBarDividerColor: Colors.transparent,
  //   ));
  // }
}
