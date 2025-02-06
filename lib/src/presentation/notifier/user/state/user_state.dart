import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/enums/loading_status.dart';
import 'package:social_app/enums/menu_type.dart';
import 'package:social_app/src/domain/model/post_model/post_model.dart';

import '../../../../domain/model/user_model/user_model.dart';
part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  factory UserState({
    @Default(LoadStatus.initial) LoadStatus status,
    @Default([]) List<PostModel> post,
    @Default(MenuType.post) MenuType type,
    @Default(null) UserModel? user,

  }) = _UserState;
}