import 'package:auvnet_task/features/getting%20started/presentation/controller/getting_started/getting_started_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'core/common/res/helpers/app_router.dart';
import 'core/common/res/service/injection.dart';
import 'features/Home/data/models/hive models/banner_hive_model.dart';
import 'features/Home/data/models/hive models/restaurant_hive_model.dart';
import 'features/Home/data/models/hive models/service_hive_model.dart';
import 'features/Home/data/models/hive models/user_hive_model.dart';
import 'features/getting started/presentation/controller/getting_started/getting_started_event.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);

  Hive.registerAdapter(BannerHiveModelAdapter());
  Hive.registerAdapter(RestaurantHiveModelAdapter());
  Hive.registerAdapter(ServiceHiveModelAdapter());
  Hive.registerAdapter(UserHiveModelAdapter());

  await Hive.openBox<BannerHiveModel>('bannersBox');
  await Hive.openBox<RestaurantHiveModel>('restaurantsBox');
  await Hive.openBox<ServiceHiveModel>('servicesBox');
  await Hive.openBox<UserHiveModel>('userBox');
  await Firebase.initializeApp();
  await configureDependencies();
  final appRouter = AppRouter();
  runApp(MyApp(appRouter: appRouter));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GettingStartedBloc()..add(const GettingStartedEvent.started()),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp.router(
            routerConfig: appRouter.config(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
