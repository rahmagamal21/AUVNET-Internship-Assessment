import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/common/res/utils/colors.dart';
import '../controller/getting_started/getting_started_bloc.dart';
import '../controller/getting_started/getting_started_state.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: BlocBuilder<GettingStartedBloc, GettingStartedState>(
          builder: (context, state) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 800),

              child: state.when(
                initial: () => const SizedBox(),
                showLogo: () => Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 336.w,
                    height: 336.h,
                  ),
                ),
                showOnboarding: () => const OnboardingScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
