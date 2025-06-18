import 'dart:developer';

import 'package:auvnet_task/core/common/res/utils/colors.dart';
import 'package:auvnet_task/features/Home/presentation/controller/home/home_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entities/banner_entity.dart';
import '../../controller/home/home_event.dart';
import '../../controller/home/home_state.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        log('📦 Banners from state: ${state.banners}');
        if (state.isBannersLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.error != null) {
          return Text('Error: ${state.error}');
        } else if (state.banners.isEmpty) {
          return const Text('No banners available');
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 180.h,
                autoPlay: state.banners.length > 1,
                enlargeCenterPage: state.banners.length > 1,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  context.read<HomeBloc>().add(
                    HomeEvent.updateBannerIndex(index),
                  );
                },
              ),

              items: state.banners.map((BannerEntity banner) {
                log('🖼️ Banner URL: ${banner.imageUrl}');
                final image = ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.network(
                    banner.imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                );

                return state.banners.length == 1
                    ? Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: image,
                      )
                    : image;
              }).toList(),
            ),
            if (state.banners.length > 1)
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: state.banners.asMap().entries.map((entry) {
                      final index = entry.key;
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: state.currentBannerIndex == index ? 12.w : 8.w,
                        height: state.currentBannerIndex == index ? 12.w : 8.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: state.currentBannerIndex == index
                              ? AppColors.primaryColor
                              : AppColors.grey,
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
          ],
        );
      },
    );
  }
}
