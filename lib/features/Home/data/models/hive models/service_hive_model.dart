import 'package:hive/hive.dart';

part 'service_hive_model.g.dart';

@HiveType(typeId: 3)
class ServiceHiveModel extends HiveObject {
  @HiveField(0)
  final String imageUrl;

  @HiveField(1)
  final String tag;

  @HiveField(2)
  final String name;

  ServiceHiveModel({
    required this.imageUrl,
    required this.tag,
    required this.name,
  });
}
