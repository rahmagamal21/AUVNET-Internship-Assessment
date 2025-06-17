import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/res/utils/colors.dart';
import '../../../../../core/common/res/utils/styles.dart';

class ShortCuts extends StatelessWidget {
  const ShortCuts({super.key});

  @override
  Widget build(BuildContext context) {
    final shortcuts = [
      {'icon': 'assets/images/orders.png', 'label': 'Past orders'},
      {'icon': 'assets/images/saver.png', 'label': 'Super Saver'},
      {'icon': 'assets/images/must_tries.png', 'label': 'Must-tries'},
      {'icon': 'assets/images/give_back.png', 'label': 'Give Back'},
      {'icon': 'assets/images/best.png', 'label': 'Best Sellers'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            "Shortcuts:",
            style: Styles.dmSansBold().copyWith(color: AppColors.black),
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 120.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            scrollDirection: Axis.horizontal,
            itemCount: shortcuts.length,
            separatorBuilder: (_, __) => SizedBox(width: 8.w),
            itemBuilder: (context, index) {
              return SizedBox(
                width: 65.h,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.shortcutsContainer,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      height: 65.h,
                      width: 65.h,
                      child: Image.asset(
                        shortcuts[index]['icon']!,
                        // width: 57.w,
                        // height: 50.h,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      shortcuts[index]['label'].toString(),
                      style: Styles.dmSansMedium().copyWith(
                        fontSize: 12,
                        color: AppColors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
