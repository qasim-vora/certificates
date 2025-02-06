// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PostModelImplAdapter extends TypeAdapter<_$PostModelImpl> {
  @override
  final int typeId = 3;

  @override
  _$PostModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PostModelImpl(
      postId: fields[1] as String,
      postype: fields[2] as String,
      url: fields[3] as String,
      location: fields[4] as String,
      description: fields[5] as String,
      allowComments: fields[6] as bool,
      saved: fields[7] as int,
      share: fields[8] as int,
      auther: fields[9] as UserModel,
      comments: (fields[10] as List).cast<UserModel>(),
      likes: (fields[11] as List).cast<UserModel>(),
      createdAt: fields[12] as DateTime,
      updatedAt: fields[13] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$PostModelImpl obj) {
    writer
      ..writeByte(13)
      ..writeByte(1)
      ..write(obj.postId)
      ..writeByte(2)
      ..write(obj.postype)
      ..writeByte(3)
      ..write(obj.url)
      ..writeByte(4)
      ..write(obj.location)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.allowComments)
      ..writeByte(7)
      ..write(obj.saved)
      ..writeByte(8)
      ..write(obj.share)
      ..writeByte(9)
      ..write(obj.auther)
      ..writeByte(12)
      ..write(obj.createdAt)
      ..writeByte(13)
      ..write(obj.updatedAt)
      ..writeByte(10)
      ..write(obj.comments)
      ..writeByte(11)
      ..write(obj.likes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      postId: json['_id'] as String,
      postype: json['postype'] as String,
      url: json['url'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      allowComments: json['allowComments'] as bool,
      saved: (json['saved'] as num).toInt(),
      share: (json['share'] as num).toInt(),
      auther: UserModel.fromJson(json['auther'] as Map<String, dynamic>),
      comments: (json['comments'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      likes: (json['likes'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.postId,
      'postype': instance.postype,
      'url': instance.url,
      'location': instance.location,
      'description': instance.description,
      'allowComments': instance.allowComments,
      'saved': instance.saved,
      'share': instance.share,
      'auther': instance.auther,
      'comments': instance.comments,
      'likes': instance.likes,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
