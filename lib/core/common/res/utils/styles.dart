import 'package:auvnet_task/core/common/res/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static const String rubikFont = 'Rubik';
  static const String dmsansFont = 'DMSans';
  static const String mulishFont = 'Mulish';

  static TextStyle rubikRegular() {
    return TextStyle(
      fontFamily: rubikFont,
      fontSize: 14.0.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.subTitleColor,
    );
  }

  static TextStyle rubikMedium() {
    return const TextStyle(fontFamily: rubikFont, fontWeight: FontWeight.w500);
  }

  static TextStyle rubikBold() {
    return TextStyle(
      fontFamily: rubikFont,
      fontWeight: FontWeight.w700,
      fontSize: 30.0.sp,
      color: AppColors.userName,
    );
  }

  static TextStyle dmSansMedium() {
    return TextStyle(
      fontFamily: dmsansFont,
      fontWeight: FontWeight.w500,
      fontSize: 14.0.sp,
    );
  }

  static TextStyle dmSansBold() {
    return TextStyle(
      fontFamily: dmsansFont,
      fontWeight: FontWeight.w700,
      fontSize: 20.0.sp,
    );
  }

  static TextStyle mulishLight() {
    return TextStyle(
      fontFamily: mulishFont,
      fontWeight: FontWeight.w300,
      fontSize: 14.0.sp,
      color: AppColors.grey,
    );
  }
}
