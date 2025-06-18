import 'dart:developer';

import 'package:auvnet_task/features/Home/presentation/controller/home/home_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entities/banner_entity.dart';
import '../../controller/home/home_state.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        log('📦 Banners from state: ${state.banners}');
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.error != null) {
          return Text('Error: ${state.error}');
        } else if (state.banners.isEmpty) {
          return const Text('No banners available');
        }
        return CarouselSlider(
          options: CarouselOptions(
            height: 180.h,
            autoPlay: true,
            enlargeCenterPage: true,
          ),

          items: state.banners.map((BannerEntity banner) {
            log('🖼️ Banner URL: ${banner.imageUrl}');
            return ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Image.network(
                banner.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
