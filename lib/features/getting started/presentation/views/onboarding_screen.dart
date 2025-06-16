import 'package:auvnet_task/core/common/res/utils/styles.dart';
import 'package:auvnet_task/features/login/presentation/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/common/res/utils/colors.dart';
import '../controller/getting_started/getting_started_bloc.dart';
import '../controller/getting_started/getting_started_event.dart';
import '../controller/getting_started/getting_started_state.dart';

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
              SizedBox(
                height: 447.h,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: SvgPicture.asset(
                        'assets/images/on_boarding.svg',
                        height: 447.h,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 336.w,
                        height: 336.h,
                      ),
                    ),
                  ],
                ),
              ),

              //SizedBox(height: 40.h),
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
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            context.read<GettingStartedBloc>().add(
                              const GettingStartedEvent.skipPressed(),
                            );
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 16.h),
                          ),
                          child: Text(
                            'Get Started',
                            style: Styles.rubikMedium().copyWith(
                              fontSize: 18.sp,
                              color: AppColors.white,
                            ),
                          ),
                        ),
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
