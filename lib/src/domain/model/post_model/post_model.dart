import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:social_app/src/domain/model/user_model/user_model.dart';
part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  @HiveType(typeId: 3)
  const factory PostModel({
    @HiveField(1)
    @JsonKey(name: "_id")
    required String postId,

    @HiveField(2)
    @JsonKey(name: "postype")
    required String postype,

    @HiveField(3)
    @JsonKey(name: "url")
    required String url,

    @HiveField(4)
    @JsonKey(name: "location")
    required String location,

    @HiveField(5)
    @JsonKey(name: "description")
    required String description,

    @HiveField(6)
    @JsonKey(name: "allowComments")
    required bool allowComments,

    @HiveField(7)
    @JsonKey(name: "saved")
    required int saved,

    @HiveField(8)
    @JsonKey(name: "share")
    required int share,

    @HiveField(9)
    @JsonKey(name: "auther")
    required UserModel auther,

    @HiveField(10)
    @JsonKey(name: "comments")
    required List<UserModel> comments,

    @HiveField(11)
    @JsonKey(name: "likes")
    required List<UserModel> likes,

    @HiveField(12)
    @JsonKey(name: "createdAt")
    required DateTime createdAt,

    @HiveField(13)
    @JsonKey(name: "updatedAt")
    required DateTime updatedAt,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);



}
