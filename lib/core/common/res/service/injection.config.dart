// dart format width=80
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
import 'package:auvnet_task/features/Home/data/repositories/banner_repository_impl.dart'
    as _i1035;
import 'package:auvnet_task/features/Home/domain/repositories/banner_repository.dart'
    as _i681;
import 'package:auvnet_task/features/Home/domain/usecases/get_banner_usecase.dart'
    as _i653;
import 'package:auvnet_task/features/Home/presentation/controller/home/home_bloc.dart'
    as _i339;
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final firebaseModule = _$FirebaseModule();
    gh.lazySingleton<_i974.FirebaseFirestore>(() => firebaseModule.firestore);
    gh.lazySingleton<_i86.BannerRemoteDataSource>(
      () => _i86.BannerRemoteDataSourceImpl(gh<_i974.FirebaseFirestore>()),
    );
    gh.lazySingleton<_i681.BannerRepository>(
      () => _i1035.BannerRepositoryImpl(gh<_i86.BannerRemoteDataSource>()),
    );
    gh.factory<_i653.GetBannersUseCase>(
      () => _i653.GetBannersUseCase(gh<_i681.BannerRepository>()),
    );
    gh.factory<_i339.HomeBloc>(
      () => _i339.HomeBloc(gh<_i653.GetBannersUseCase>()),
    );
    return this;
  }
}

class _$FirebaseModule extends _i635.FirebaseModule {}
