import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/res/utils/colors.dart';
import '../../../../../core/common/res/utils/styles.dart';

class Restaurants extends StatelessWidget {
  const Restaurants({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurants = [
      {
        'image': 'assets/images/allo.png',
        'name': 'Allo Beirut',
        'time': '32 mins',
      },
      {
        'image': 'assets/images/laffah.png',
        'name': 'Laffah',
        'time': '38 mins',
      },
      {
        'image': 'assets/images/falafil.png',
        'name': 'Falafil Al Rabiah',
        'time': '44 mins',
      },
      {
        'image': 'assets/images/barbar.png',
        'name': 'Barbar',
        'time': '34 mins',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            "Popular restaurants nearby",
            style: Styles.dmSansBold().copyWith(
              fontSize: 16,
              color: AppColors.black,
            ),
          ),
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 140.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: restaurants.length,
            separatorBuilder: (_, __) => SizedBox(width: 12.w),
            itemBuilder: (context, index) {
              return SizedBox(
                width: 80.w,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(16.r),
                        border: Border.all(color: AppColors.grey, width: 0.5),
                      ),
                      height: 70.h,
                      width: 80.w,
                      child: Image.asset(restaurants[index]['image']!),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      restaurants[index]['name']!,
                      style: Styles.dmSansMedium().copyWith(
                        fontSize: 12,

                        color: AppColors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 10,
                          color: AppColors.time,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          restaurants[index]['time']!,
                          style: Styles.dmSansMedium().copyWith(
                            fontSize: 10,
                            color: AppColors.time,
                          ),
                        ),
                      ],
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
