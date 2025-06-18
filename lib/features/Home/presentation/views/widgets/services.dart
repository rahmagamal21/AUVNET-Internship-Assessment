import 'package:auvnet_task/features/Home/presentation/controller/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/res/utils/colors.dart';
import '../../../../../core/common/res/utils/styles.dart';
import '../../controller/home/home_state.dart';
import 'service_item.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final services = state.services;

        if (services.isEmpty) {
          return const SizedBox.shrink();
        } else if (state.isServicesLoading) {
          return const Center(child: CircularProgressIndicator());
        }
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
            SizedBox(
              height: 150.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemCount: services.length,
                separatorBuilder: (_, __) => SizedBox(width: 12.w),
                itemBuilder: (context, index) {
                  final service = services[index];
                  return ServiceItem(
                    image: service.imageUrl,
                    tag: service.tag,
                    label: service.name,
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
