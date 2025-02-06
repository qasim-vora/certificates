import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'user_model.g.dart';
part 'user_model.freezed.dart';


@freezed
class UserModel with _$UserModel {
  @HiveType(typeId: 1)
  const factory UserModel({
    @HiveField(1)
    @JsonKey(name: "_id")
    required String userId,

    @HiveField(2)
    required String email,

    @HiveField(3)
    required String password,

    @HiveField(4)
    required String gender,

    @HiveField(5)
    required String fullName,

    @HiveField(6)
    required String? nickName,

    @HiveField(7)
    required String address,

    @HiveField(8)
    required String profilePhoto,

    @HiveField(9)
    required dynamic birthDate,

    @HiveField(10)
    required int followers,

    @HiveField(11)
    required int following,

    @HiveField(12)
    required List<dynamic> intrest,

    @HiveField(13)
    required DateTime updatedAt,

    @HiveField(14)
    required String username,

    @HiveField(15)
    required bool profileSet,

    @HiveField(16)

    required int likeCount,

    @HiveField(17)
    required int postCount,

    @HiveField(18)
    required String pushToken,

  }) = _UserModel;


  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
