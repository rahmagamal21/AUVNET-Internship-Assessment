import 'package:injectable/injectable.dart';

import '../../domain/entities/banner_entity.dart';
import '../../domain/repositories/banner_repository.dart';
import '../data sources/remote/banner_remote_datasource.dart';

@LazySingleton(as: BannerRepository)
class BannerRepositoryImpl implements BannerRepository {
  final BannerRemoteDataSource remoteDataSource;

  BannerRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<BannerEntity>> getBanners() {
    return remoteDataSource.getBanners();
  }
}
