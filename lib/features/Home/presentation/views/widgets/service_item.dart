import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/res/utils/colors.dart';
import '../../../../../core/common/res/utils/styles.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({
    super.key,
    required this.image,
    required this.tag,
    required this.label,
  });
  final String image;
  final String tag;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 105.w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.serviceContainer,
              borderRadius: BorderRadius.circular(20.r),
            ),
            height: 70.h,
            width: 105.w,
            child: Image.network(image, width: 57.w, height: 50.h),
          ),
          SizedBox(height: 4.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Text(
              tag,
              style: Styles.dmSansMedium().copyWith(
                fontSize: 12,
                color: AppColors.white,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            label,
            //overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: Styles.dmSansMedium().copyWith(color: AppColors.black),
          ),
        ],
      ),
    );
  }
}
