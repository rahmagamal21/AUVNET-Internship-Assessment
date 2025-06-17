import 'package:flutter/material.dart';

import '../../../../../core/common/res/utils/colors.dart';
import '../../../../../core/common/res/utils/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: Styles.dmSansBold().copyWith(
          fontSize: 14,
          color: AppColors.secondaryColor,
        ),
      ),
    );
  }
}
