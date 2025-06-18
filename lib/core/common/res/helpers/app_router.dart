import 'package:auto_route/auto_route.dart';
import 'package:auvnet_task/features/Home/presentation/views/home_screen.dart';
import 'package:auvnet_task/features/login/presentation/views/login_screen.dart';
import 'package:auvnet_task/features/getting%20started/presentation/views/splash_screen.dart';
import 'package:auvnet_task/features/getting%20started/presentation/views/onboarding_screen.dart';
import 'package:auvnet_task/features/login/presentation/views/sign_up_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: OnboardingRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(page: HomeRoute.page),
  ];
}
