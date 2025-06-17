import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 447.h,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: SvgPicture.asset(
              'assets/images/on_boarding.svg',
              height: 447.h,
              fit: BoxFit.fitHeight,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/logo.png',
              width: 336.w,
              height: 336.h,
            ),
          ),
        ],
      ),
    );
  }
}
