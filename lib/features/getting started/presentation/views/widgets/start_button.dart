import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/res/utils/colors.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
    this.onPressed,
    required this.text,
    this.textStyle,
  });
  final void Function()? onPressed;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          padding: EdgeInsets.symmetric(vertical: 16.h),
        ),
        child: Text(text, style: textStyle),
      ),
    );
  }
}
