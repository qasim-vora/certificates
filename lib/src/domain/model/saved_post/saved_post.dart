import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:social_app/src/domain/model/post_model/post_model.dart';
import 'package:social_app/src/domain/model/user_model/user_model.dart';
part 'saved_post.freezed.dart';
part 'saved_post.g.dart';

@freezed
class SavedPostModel with _$SavedPostModel {
  @HiveType(typeId: 2)
  const factory SavedPostModel({
    @HiveField(1)
    @JsonKey(name: "_id")
    required String id,

    @HiveField(2)
    @JsonKey(name: "saved")
    required List<PostModel> saved,

    @HiveField(3)
    @JsonKey(name: "user")
    required String user,

    @HiveField(4)
    @JsonKey(name: "createdAt")
    required DateTime createdAt,
  }) = _SavedPostModel;

  factory SavedPostModel.fromJson(Map<String, dynamic> json) => _$SavedPostModelFromJson(json);

}
