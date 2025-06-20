// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ServiceHiveModelAdapter extends TypeAdapter<ServiceHiveModel> {
  @override
  final int typeId = 3;

  @override
  ServiceHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ServiceHiveModel(
      imageUrl: fields[0] as String,
      tag: fields[1] as String,
      name: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ServiceHiveModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.imageUrl)
      ..writeByte(1)
      ..write(obj.tag)
      ..writeByte(2)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
