import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/res/utils/colors.dart';
import '../../../../../core/common/res/utils/styles.dart';
import '../../controller/home/home_bloc.dart';
import '../../controller/home/home_state.dart';

class Restaurants extends StatelessWidget {
  const Restaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final restaurants = state.restaurants;

        if (restaurants.isEmpty) {
          return const SizedBox.shrink();
        } else if (state.isRestaurantsLoading) {
          return const Center(child: CircularProgressIndicator());
        }

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
                  final restaurant = restaurants[index];
                  return SizedBox(
                    width: 80.w,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(16.r),
                            border: Border.all(
                              color: AppColors.grey,
                              width: 0.5,
                            ),
                          ),
                          height: 70.h,
                          width: 80.w,
                          child: Image.network(restaurant.imageUrl),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          restaurant.name,
                          overflow: TextOverflow.ellipsis,
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
                              restaurant.deliveryTime,
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
      },
    );
  }
}
