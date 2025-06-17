import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/res/utils/colors.dart';
import '../../../../../core/common/res/utils/styles.dart';
import 'service_item.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Services',
            style: Styles.dmSansBold().copyWith(color: AppColors.black),
          ),
        ),
        SizedBox(height: 16.h),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ServiceItem(
              image: 'assets/images/food.png',
              tag: 'Up to 50%',
              label: 'Food',
            ),
            ServiceItem(
              image: 'assets/images/health.png',
              tag: '20mins',
              label: 'Health & wellness',
            ),
            ServiceItem(
              image: 'assets/images/groceries.png',
              tag: '15 mins',
              label: 'Groceries',
            ),
          ],
        ),
      ],
    );
  }
}
