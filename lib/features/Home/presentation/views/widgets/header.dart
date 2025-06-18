import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/res/utils/colors.dart';
import '../../../../../core/common/res/utils/styles.dart';
import '../../controller/home/home_bloc.dart';
import '../../controller/home/home_state.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final user = state.currentUser;
        return Container(
          height: 156.h,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [AppColors.primaryColor, AppColors.headerSecondaryColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(26.r),
              bottomRight: Radius.circular(26.r),
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivering to",
                      style: Styles.dmSansBold().copyWith(
                        fontSize: 12,
                        color: AppColors.black,
                      ),
                    ),
                    Text(
                      "Al Satwa, 81A Street",
                      style: Styles.dmSansBold().copyWith(
                        fontSize: 16,
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "Hi ${user?.name ?? 'Guest'}!",
                      style: Styles.rubikBold(),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                backgroundImage: user?.profilePic != null
                    ? NetworkImage(user!.profilePic!)
                    : const AssetImage('assets/images/profile.png')
                          as ImageProvider,

                radius: 30.r,
              ),
            ],
          ),
        );
      },
    );
  }
}
