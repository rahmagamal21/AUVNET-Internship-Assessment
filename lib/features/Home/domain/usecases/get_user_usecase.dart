import 'package:injectable/injectable.dart';

import '../entities/user_entity.dart';
import '../repositories/user_reposity.dart';

@injectable
class GetUserUseCase {
  final UserRepository repository;

  GetUserUseCase(this.repository);

  Future<UserEntity> call() => repository.getUser();
}
