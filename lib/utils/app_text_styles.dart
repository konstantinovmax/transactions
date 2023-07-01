import 'package:flutter/material.dart';
import 'package:transactions/utils/app_colors.dart';
import 'package:transactions/utils/app_fonts.dart';

class AppTextStyles {
  static TextStyle text10RegularBlack = const TextStyle(
    fontFamily: AppFonts.font1,
    fontWeight: FontWeight.w400,
    fontSize: 10.0,
    height: 1.7,
    color: AppColors.black,
  );

  static TextStyle text10BoldBlack = const TextStyle(
    fontFamily: AppFonts.font1,
    fontWeight: FontWeight.w700,
    fontSize: 10.0,
    height: 1.7,
    color: AppColors.black,
  );

  static TextStyle text20BoldGreen = const TextStyle(
    fontFamily: AppFonts.font1,
    fontWeight: FontWeight.w700,
    fontSize: 20.0,
    height: 1.7,
    color: AppColors.green,
  );

  static TextStyle text30BoldGreen = const TextStyle(
    fontFamily: AppFonts.font1,
    fontWeight: FontWeight.w700,
    fontSize: 30.0,
    height: 1.7,
    color: AppColors.green,
  );
}
