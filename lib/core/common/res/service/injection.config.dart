// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auvnet_task/core/common/res/service/app_module.dart' as _i635;
import 'package:auvnet_task/features/Home/data/data%20sources/remote/banner_remote_datasource.dart'
    as _i86;
import 'package:auvnet_task/features/Home/data/data%20sources/remote/restaurant_remote_datasources.dart'
    as _i640;
import 'package:auvnet_task/features/Home/data/data%20sources/remote/service_remote_datasources.dart'
    as _i775;
import 'package:auvnet_task/features/Home/data/data%20sources/remote/user_remote_datasource.dart'
    as _i792;
import 'package:auvnet_task/features/Home/data/repositories/banner_repository_impl.dart'
    as _i1035;
import 'package:auvnet_task/features/Home/data/repositories/restaurant_repository_impl.dart'
    as _i475;
import 'package:auvnet_task/features/Home/data/repositories/service_repository_imp.dart'
    as _i434;
import 'package:auvnet_task/features/Home/data/repositories/user_reposity_impl.dart'
    as _i245;
import 'package:auvnet_task/features/Home/domain/repositories/banner_repository.dart'
    as _i681;
import 'package:auvnet_task/features/Home/domain/repositories/restaurant_repository.dart'
    as _i190;
import 'package:auvnet_task/features/Home/domain/repositories/service_repository.dart'
    as _i57;
import 'package:auvnet_task/features/Home/domain/repositories/user_reposity.dart'
    as _i1056;
import 'package:auvnet_task/features/Home/domain/usecases/get_banner_usecase.dart'
    as _i653;
import 'package:auvnet_task/features/Home/domain/usecases/get_restaurant_usecase.dart'
    as _i321;
import 'package:auvnet_task/features/Home/domain/usecases/get_service_usecase.dart'
    as _i873;
import 'package:auvnet_task/features/Home/domain/usecases/get_user_usecase.dart'
    as _i1052;
import 'package:auvnet_task/features/Home/presentation/controller/home/home_bloc.dart'
    as _i339;
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseModule = _$FirebaseModule();
    gh.lazySingleton<_i974.FirebaseFirestore>(() => firebaseModule.firestore);
    gh.lazySingleton<_i59.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i86.BannerRemoteDataSource>(
        () => _i86.BannerRemoteDataSourceImpl(gh<_i974.FirebaseFirestore>()));
    gh.lazySingleton<_i775.ServiceRemoteDataSource>(
        () => _i775.ServiceRemoteDataSourceImpl(gh<_i974.FirebaseFirestore>()));
    gh.lazySingleton<_i640.RestaurantRemoteDataSource>(() =>
        _i640.RestaurantRemoteDataSourceImpl(gh<_i974.FirebaseFirestore>()));
    gh.lazySingleton<_i190.RestaurantRepository>(() =>
        _i475.RestaurantRepositoryImpl(gh<_i640.RestaurantRemoteDataSource>()));
    gh.lazySingleton<_i792.UserRemoteDataSource>(
        () => _i792.UserRemoteDataSourceImpl(
              gh<_i59.FirebaseAuth>(),
              gh<_i974.FirebaseFirestore>(),
            ));
    gh.lazySingleton<_i681.BannerRepository>(
        () => _i1035.BannerRepositoryImpl(gh<_i86.BannerRemoteDataSource>()));
    gh.lazySingleton<_i57.ServiceRepository>(
        () => _i434.ServiceRepositoryImpl(gh<_i775.ServiceRemoteDataSource>()));
    gh.factory<_i653.GetBannersUseCase>(
        () => _i653.GetBannersUseCase(gh<_i681.BannerRepository>()));
    gh.factory<_i321.GetRestaurantsUseCase>(
        () => _i321.GetRestaurantsUseCase(gh<_i190.RestaurantRepository>()));
    gh.factory<_i873.GetServicesUseCase>(
        () => _i873.GetServicesUseCase(gh<_i57.ServiceRepository>()));
    gh.lazySingleton<_i1056.UserRepository>(
        () => _i245.UserRepositoryImpl(gh<_i792.UserRemoteDataSource>()));
    gh.factory<_i1052.GetUserUseCase>(
        () => _i1052.GetUserUseCase(gh<_i1056.UserRepository>()));
    gh.factory<_i339.HomeBloc>(() => _i339.HomeBloc(
          gh<_i653.GetBannersUseCase>(),
          gh<_i321.GetRestaurantsUseCase>(),
          gh<_i873.GetServicesUseCase>(),
          gh<_i1052.GetUserUseCase>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i635.FirebaseModule {}
