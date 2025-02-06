import 'package:freezed_annotation/freezed_annotation.dart' ;
import 'package:social_app/src/domain/model/user_model/user_model.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    @JsonKey(name: "_id")
    required String commentId,
    @JsonKey(name: "comment")
    required String comment,
    @JsonKey(name: "postId")
    required String postId,
    @JsonKey(name: "auther")
    required UserModel auther,
    @JsonKey(name: "createdAt")
    required DateTime createdAt,
    @JsonKey(name: "updatedAt")
    required DateTime updatedAt
  }) = _CommentModel;
  factory CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);

}
