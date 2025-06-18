import 'dart:developer';

import '../../domain/entities/banner_entity.dart';

class BannerModel extends BannerEntity {
  const BannerModel({required super.imageUrl});

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    log("📥 Raw banner data: $json");
    return BannerModel(imageUrl: json['imageUrl'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {'imageUrl': imageUrl};
  }
}
