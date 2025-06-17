import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/res/utils/colors.dart';
import '../../../../../core/common/res/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.icon,
    this.obscureText = false,
  });

  final TextEditingController? controller;
  final String hintText;
  final IconData? icon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Styles.mulishLight(),
        prefixIcon: Icon(icon, color: AppColors.grey),
        filled: true,
        fillColor: AppColors.inputFieldColor,
        contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
