import 'package:hive/hive.dart';

part 'restaurant_hive_model.g.dart';

@HiveType(typeId: 2)
class RestaurantHiveModel extends HiveObject {
  @HiveField(0)
  final String deliveryTime;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String imageUrl;

  RestaurantHiveModel({
    required this.deliveryTime,
    required this.name,
    required this.imageUrl,
  });
}
