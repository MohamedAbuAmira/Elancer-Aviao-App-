// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:aviao/core/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LightTextStyles {
  LightTextStyles._();

  static TextStyle SFBody({required Color textColor, bool isLight = true}) {
    return TextStyle(
      fontSize: 17.sp,
      fontWeight: isLight ? FontWeight.w300 : FontWeight.w700,
      color: textColor,
      height: 1.9,
    );
  }

  static TextStyle SFBodySmall(
      {required Color textColor, bool isLight = true}) {
    return TextStyle(
      fontSize: 13.sp,
      fontWeight: isLight ? FontWeight.w300 : FontWeight.w700,
      color: textColor,
      height: 1.25,
    );
  }

  static TextStyle SFMicroText(
      {required Color textColor, bool isLight = true}) {
    return TextStyle(
      fontSize: 10.sp,
      fontWeight: isLight ? FontWeight.w300 : FontWeight.w700,
      color: textColor,
      height: 1.6,
    );
  }

  static TextStyle SFH3({required Color textColor, bool isLight = true}) {
    return TextStyle(
      fontSize: 32.sp,
      fontWeight: isLight ? FontWeight.w300 : FontWeight.w700,
      color: textColor,
      height: 1.45,
    );
  }

  static TextStyle SFH4({required Color textColor, bool isLight = true}) {
    return TextStyle(
      fontSize: 26.sp,
      fontWeight: isLight ? FontWeight.w300 : FontWeight.w700,
      color: textColor,
      height: 1.3,
    );
  }

  static TextStyle SFH5({required Color textColor, bool isLight = true}) {
    return TextStyle(
      fontSize: 24.sp,
      fontWeight: isLight ? FontWeight.w300 : FontWeight.w700,
      color: textColor,
      height: 1.35,
    );
  }

  static TextStyle SFH6({required Color textColor, bool isLight = true}) {
    return TextStyle(
      fontSize: 20.sp,
      fontWeight: isLight ? FontWeight.w300 : FontWeight.w700,
      color: textColor,
      height: 1.2,
    );
  }

  static TextStyle SFH2({required Color textColor, bool isLight = true}) {
    return TextStyle(
      fontSize: 40.sp,
      fontWeight: isLight ? FontWeight.w300 : FontWeight.w700,
      color: textColor,
      height: 1.2,
    );
  }

  static TextStyle SFH1({required Color textColor, bool isLight = true}) {
    return TextStyle(
      fontSize: 56.sp,
      fontWeight: isLight ? FontWeight.w300 : FontWeight.w700,
      color: textColor,
      height: 1.15,
    );
  }
}
