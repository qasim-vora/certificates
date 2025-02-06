// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelImplAdapter extends TypeAdapter<_$UserModelImpl> {
  @override
  final int typeId = 1;

  @override
  _$UserModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserModelImpl(
      userId: fields[1] as String,
      email: fields[2] as String,
      password: fields[3] as String,
      gender: fields[4] as String,
      fullName: fields[5] as String,
      nickName: fields[6] as String?,
      address: fields[7] as String,
      profilePhoto: fields[8] as String,
      birthDate: fields[9] as dynamic,
      followers: fields[10] as int,
      following: fields[11] as int,
      intrest: (fields[12] as List).cast<dynamic>(),
      updatedAt: fields[13] as DateTime,
      username: fields[14] as String,
      profileSet: fields[15] as bool,
      likeCount: fields[16] as int,
      postCount: fields[17] as int,
      pushToken: fields[18] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$UserModelImpl obj) {
    writer
      ..writeByte(18)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.password)
      ..writeByte(4)
      ..write(obj.gender)
      ..writeByte(5)
      ..write(obj.fullName)
      ..writeByte(6)
      ..write(obj.nickName)
      ..writeByte(7)
      ..write(obj.address)
      ..writeByte(8)
      ..write(obj.profilePhoto)
      ..writeByte(9)
      ..write(obj.birthDate)
      ..writeByte(10)
      ..write(obj.followers)
      ..writeByte(11)
      ..write(obj.following)
      ..writeByte(13)
      ..write(obj.updatedAt)
      ..writeByte(14)
      ..write(obj.username)
      ..writeByte(15)
      ..write(obj.profileSet)
      ..writeByte(16)
      ..write(obj.likeCount)
      ..writeByte(17)
      ..write(obj.postCount)
      ..writeByte(18)
      ..write(obj.pushToken)
      ..writeByte(12)
      ..write(obj.intrest);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userId: json['_id'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      gender: json['gender'] as String,
      fullName: json['fullName'] as String,
      nickName: json['nickName'] as String?,
      address: json['address'] as String,
      profilePhoto: json['profilePhoto'] as String,
      birthDate: json['birthDate'],
      followers: (json['followers'] as num).toInt(),
      following: (json['following'] as num).toInt(),
      intrest: json['intrest'] as List<dynamic>,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      username: json['username'] as String,
      profileSet: json['profileSet'] as bool,
      likeCount: (json['likeCount'] as num).toInt(),
      postCount: (json['postCount'] as num).toInt(),
      pushToken: json['pushToken'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.userId,
      'email': instance.email,
      'password': instance.password,
      'gender': instance.gender,
      'fullName': instance.fullName,
      'nickName': instance.nickName,
      'address': instance.address,
      'profilePhoto': instance.profilePhoto,
      'birthDate': instance.birthDate,
      'followers': instance.followers,
      'following': instance.following,
      'intrest': instance.intrest,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'username': instance.username,
      'profileSet': instance.profileSet,
      'likeCount': instance.likeCount,
      'postCount': instance.postCount,
      'pushToken': instance.pushToken,
    };
