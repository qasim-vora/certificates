import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app/enums/loading_status.dart';
import 'package:social_app/src/domain/model/post_model/post_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<PostModel> lists,
    @Default(LoadStatus.initial) LoadStatus loadStatus,

  }) = _HomeState;
}