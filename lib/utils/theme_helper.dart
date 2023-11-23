import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeColors {
  static Color red = const Color(0xFFB40F0F);
  static Color black = const Color(0xFF121111);
  static Color grey = const Color(0xFF898481);
  static Color greyLight = const Color(0xFFEAE8E5);
}

class ThemeStyles{
  static final TextStyle black15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: ThemeColors.black,
    height: 22 / 15,
  );
  static final TextStyle black24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: ThemeColors.black,
    height: 31.2 / 24,
  );
  static final TextStyle black24_h = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: ThemeColors.black,
    height: 42 / 24,
  );
  static final TextStyle black17 = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeight.w500,
    color: ThemeColors.black,
  );
  static final TextStyle grey16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: ThemeColors.grey,
    height: 22 / 16,
  );
  static final TextStyle grey15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: ThemeColors.grey,
    height: 22 / 15,
  );
  static final TextStyle greyLight12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ThemeColors.greyLight,
    height: 15 / 12,
  );
  static final TextStyle greyLight15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: ThemeColors.greyLight,
    height: 22 / 15,
  );
  static final TextStyle greyLight16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: ThemeColors.greyLight,
    height: 22 / 16,
  );
  static final TextStyle red15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: ThemeColors.red,
    height: 22 / 15,
  );
  static final TextStyle white15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    height: 22 / 15,
  );
  static final TextStyle white20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    height: 25 / 20,
  );
  static final TextStyle white24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    height: 31.2 / 24,
  );

}