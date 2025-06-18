import 'package:auvnet_task/core/common/res/utils/colors.dart';
import 'package:auvnet_task/features/Home/domain/usecases/get_restaurant_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/res/service/injection.dart';
import '../../domain/usecases/get_banner_usecase.dart';
import '../../domain/usecases/get_service_usecase.dart';
import '../../domain/usecases/get_user_usecase.dart';
import '../controller/home/home_bloc.dart';
import '../controller/home/home_event.dart';
import 'widgets/banner_slider.dart';
import 'widgets/code_card.dart';
import 'widgets/header.dart';
import 'widgets/restaurants.dart';
import 'widgets/services.dart';
import 'widgets/shortcuts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) =>
            HomeBloc(
                getIt<GetBannersUseCase>(),
                getIt<GetRestaurantsUseCase>(),
                getIt<GetServicesUseCase>(),
                getIt<GetUserUseCase>(),
              )
              ..add(const GetBannersEvent())
              ..add(const GetRestaurantsEvent())
              ..add(const GetServicesEvent())
              ..add(const GetCurrentUserEvent()),

        child: ListView(
          children: [
            const Header(),
            SizedBox(height: 10.h),
            const Services(),
            SizedBox(height: 8.h),
            const CodeCard(),
            SizedBox(height: 16.h),
            const ShortCuts(),
            SizedBox(height: 16.h),
            const BannerSlider(),
            SizedBox(height: 16.h),
            const Restaurants(),
            SizedBox(height: 40.h),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.bottomNavItems,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: 'Deliver',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
