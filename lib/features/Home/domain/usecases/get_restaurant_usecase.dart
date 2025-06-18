import 'package:injectable/injectable.dart';

import '../entities/restaurant_entity.dart';
import '../repositories/restaurant_repository.dart';

@injectable
class GetRestaurantsUseCase {
  final RestaurantRepository repository;

  GetRestaurantsUseCase(this.repository);

  Future<List<RestaurantEntity>> call() async {
    return repository.getRestaurants();
  }
}
