
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/enums/loading_status.dart';
import 'package:social_app/src/domain/model/comment/comment_model.dart';

import '../../../../src/domain/model/post_model/post_model.dart';
import '../../../../src/domain/model/saved_post/saved_post.dart';
import '../../../../src/domain/model/user_model/user_model.dart';

part 'post_widget_state.freezed.dart';

@freezed
class PostWidgetState with _$PostWidgetState {
  factory PostWidgetState({
    @Default(null) TextEditingController? commentCon,
    @Default(null) FocusNode? commentFocus,
    @Default(LoadStatus.initial) LoadStatus status,
    @Default([]) List<CommentModel> comments,
    @Default(null) PostModel? postModel,
    @Default(null) UserModel? userModel,
    @Default(null) SavedPostModel? savedPostModel,
    @Default(300) double? sheetHeight

  }) = _PostWidgetState;
}