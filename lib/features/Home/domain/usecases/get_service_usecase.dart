import 'package:injectable/injectable.dart';

import '../entities/service_entity.dart';
import '../repositories/service_repository.dart';

@injectable
class GetServicesUseCase {
  final ServiceRepository repository;

  GetServicesUseCase(this.repository);

  Future<List<ServiceEntity>> call() => repository.getServices();
}
