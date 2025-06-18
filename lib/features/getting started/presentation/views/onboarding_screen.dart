import 'package:auto_route/auto_route.dart';
import 'package:auvnet_task/core/common/res/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common/res/helpers/app_router.dart';
import '../../../../core/common/res/utils/colors.dart';
import '../controller/getting_started/getting_started_bloc.dart';
import '../controller/getting_started/getting_started_event.dart';
import '../controller/getting_started/getting_started_state.dart';
import 'widgets/on_boarding_image.dart';
import 'widgets/start_button.dart';

@RoutePage()
class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final titles = [
    'all-in-one delivery ',
    'User-to-User Delivery',
    'Sales & Discounts',
  ];

  final subtitles = [
    'Order groceries, medicines, and meals delivered straight to your door',
    'Send or receive items from other users quickly and easily',
    'Discover exclusive sales and deals every day',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: BlocBuilder<GettingStartedBloc, GettingStartedState>(
        builder: (context, state) {
          return Column(
            children: [
              const OnboardingImage(),

              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      const Spacer(),
                      Text(
                        titles[state.index],
                        style: Styles.rubikMedium().copyWith(
                          fontSize: 28.sp,
                          color: AppColors.lightBlack,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        subtitles[state.index],
                        style: Styles.rubikRegular(),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(),
                      StartButton(
                        text: 'Get Started',
                        textStyle: Styles.rubikMedium().copyWith(
                          fontSize: 18.sp,
                          color: AppColors.white,
                        ),
                        onPressed: () {
                          context.read<GettingStartedBloc>().add(
                            const GettingStartedEvent.skipPressed(),
                          );
                          context.router.replace(const LoginRoute());
                        },
                      ),
                      SizedBox(height: 12.h),
                      if (state.index < 2)
                        TextButton(
                          onPressed: () {
                            context.read<GettingStartedBloc>().add(
                              const GettingStartedEvent.nextPressed(),
                            );
                          },
                          child: Text('Next', style: Styles.rubikRegular()),
                        ),
                      SizedBox(height: 24.h),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
