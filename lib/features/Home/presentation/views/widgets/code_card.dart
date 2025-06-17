import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/res/utils/colors.dart';
import '../../../../../core/common/res/utils/styles.dart';

class CodeCard extends StatelessWidget {
  const CodeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Material(
        elevation: 1,
        borderOnForeground: false,
        borderRadius: BorderRadius.circular(16.r),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: AppColors.white,
            //border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/code.png',
                width: 76.w,
                height: 54.81.h,
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Got a code !",
                      style: Styles.dmSansBold().copyWith(
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      "Add your code and save on your order",
                      style: Styles.dmSansMedium().copyWith(
                        fontSize: 10,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
