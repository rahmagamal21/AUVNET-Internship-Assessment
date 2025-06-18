// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BannerHiveModelAdapter extends TypeAdapter<BannerHiveModel> {
  @override
  final int typeId = 1;

  @override
  BannerHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BannerHiveModel(
      imageUrl: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BannerHiveModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.imageUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BannerHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
