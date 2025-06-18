import 'package:hive/hive.dart';
part 'banner_hive_model.g.dart';

@HiveType(typeId: 1)
class BannerHiveModel extends HiveObject {
  @HiveField(0)
  final String imageUrl;
  BannerHiveModel({required this.imageUrl});
}
