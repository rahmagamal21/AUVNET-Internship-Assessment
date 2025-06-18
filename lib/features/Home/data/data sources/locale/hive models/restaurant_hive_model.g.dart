// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RestaurantHiveModelAdapter extends TypeAdapter<RestaurantHiveModel> {
  @override
  final int typeId = 2;

  @override
  RestaurantHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RestaurantHiveModel(
      deliveryTime: fields[0] as String,
      name: fields[1] as String,
      imageUrl: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RestaurantHiveModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.deliveryTime)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.imageUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RestaurantHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
