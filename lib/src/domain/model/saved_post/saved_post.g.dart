// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_post.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavedPostModelImplAdapter extends TypeAdapter<_$SavedPostModelImpl> {
  @override
  final int typeId = 2;

  @override
  _$SavedPostModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SavedPostModelImpl(
      id: fields[1] as String,
      saved: (fields[2] as List).cast<PostModel>(),
      user: fields[3] as String,
      createdAt: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$SavedPostModelImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.user)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.saved);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavedPostModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavedPostModelImpl _$$SavedPostModelImplFromJson(Map<String, dynamic> json) =>
    _$SavedPostModelImpl(
      id: json['_id'] as String,
      saved: (json['saved'] as List<dynamic>)
          .map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$SavedPostModelImplToJson(
        _$SavedPostModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'saved': instance.saved,
      'user': instance.user,
      'createdAt': instance.createdAt.toIso8601String(),
    };
