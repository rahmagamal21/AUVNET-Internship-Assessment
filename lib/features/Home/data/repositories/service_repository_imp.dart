import 'package:injectable/injectable.dart';

import '../../domain/entities/service_entity.dart';
import '../../domain/repositories/service_repository.dart';
import '../data sources/remote/service_remote_datasources.dart';

@LazySingleton(as: ServiceRepository)
class ServiceRepositoryImpl implements ServiceRepository {
  final ServiceRemoteDataSource remoteDataSource;

  ServiceRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<ServiceEntity>> getServices() {
    return remoteDataSource.getServices();
  }
}
