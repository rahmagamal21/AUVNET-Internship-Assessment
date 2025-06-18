import '../../domain/entities/service_entity.dart';

class ServiceModel extends ServiceEntity {
  const ServiceModel({
    required super.imageUrl,
    required super.tag,
    required super.name,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      imageUrl: json['imageUrl'] ?? '',
      tag: json['tag'] ?? '',
      name: json['name'] ?? '',
    );
  }
}
