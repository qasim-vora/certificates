// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_widget_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostWidgetState {
  TextEditingController? get commentCon => throw _privateConstructorUsedError;
  FocusNode? get commentFocus => throw _privateConstructorUsedError;
  LoadStatus get status => throw _privateConstructorUsedError;
  List<CommentModel> get comments => throw _privateConstructorUsedError;
  PostModel? get postModel => throw _privateConstructorUsedError;
  UserModel? get userModel => throw _privateConstructorUsedError;
  SavedPostModel? get savedPostModel => throw _privateConstructorUsedError;
  double? get sheetHeight => throw _privateConstructorUsedError;

  /// Create a copy of PostWidgetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostWidgetStateCopyWith<PostWidgetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostWidgetStateCopyWith<$Res> {
  factory $PostWidgetStateCopyWith(
          PostWidgetState value, $Res Function(PostWidgetState) then) =
      _$PostWidgetStateCopyWithImpl<$Res, PostWidgetState>;
  @useResult
  $Res call(
      {TextEditingController? commentCon,
      FocusNode? commentFocus,
      LoadStatus status,
      List<CommentModel> comments,
      PostModel? postModel,
      UserModel? userModel,
      SavedPostModel? savedPostModel,
      double? sheetHeight});

  $PostModelCopyWith<$Res>? get postModel;
  $UserModelCopyWith<$Res>? get userModel;
  $SavedPostModelCopyWith<$Res>? get savedPostModel;
}

/// @nodoc
class _$PostWidgetStateCopyWithImpl<$Res, $Val extends PostWidgetState>
    implements $PostWidgetStateCopyWith<$Res> {
  _$PostWidgetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostWidgetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentCon = freezed,
    Object? commentFocus = freezed,
    Object? status = null,
    Object? comments = null,
    Object? postModel = freezed,
    Object? userModel = freezed,
    Object? savedPostModel = freezed,
    Object? sheetHeight = freezed,
  }) {
    return _then(_value.copyWith(
      commentCon: freezed == commentCon
          ? _value.commentCon
          : commentCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      commentFocus: freezed == commentFocus
          ? _value.commentFocus
          : commentFocus // ignore: cast_nullable_to_non_nullable
              as FocusNode?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      postModel: freezed == postModel
          ? _value.postModel
          : postModel // ignore: cast_nullable_to_non_nullable
              as PostModel?,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      savedPostModel: freezed == savedPostModel
          ? _value.savedPostModel
          : savedPostModel // ignore: cast_nullable_to_non_nullable
              as SavedPostModel?,
      sheetHeight: freezed == sheetHeight
          ? _value.sheetHeight
          : sheetHeight // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of PostWidgetState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostModelCopyWith<$Res>? get postModel {
    if (_value.postModel == null) {
      return null;
    }

    return $PostModelCopyWith<$Res>(_value.postModel!, (value) {
      return _then(_value.copyWith(postModel: value) as $Val);
    });
  }

  /// Create a copy of PostWidgetState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userModel {
    if (_value.userModel == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userModel!, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }

  /// Create a copy of PostWidgetState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SavedPostModelCopyWith<$Res>? get savedPostModel {
    if (_value.savedPostModel == null) {
      return null;
    }

    return $SavedPostModelCopyWith<$Res>(_value.savedPostModel!, (value) {
      return _then(_value.copyWith(savedPostModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostWidgetStateImplCopyWith<$Res>
    implements $PostWidgetStateCopyWith<$Res> {
  factory _$$PostWidgetStateImplCopyWith(_$PostWidgetStateImpl value,
          $Res Function(_$PostWidgetStateImpl) then) =
      __$$PostWidgetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController? commentCon,
      FocusNode? commentFocus,
      LoadStatus status,
      List<CommentModel> comments,
      PostModel? postModel,
      UserModel? userModel,
      SavedPostModel? savedPostModel,
      double? sheetHeight});

  @override
  $PostModelCopyWith<$Res>? get postModel;
  @override
  $UserModelCopyWith<$Res>? get userModel;
  @override
  $SavedPostModelCopyWith<$Res>? get savedPostModel;
}

/// @nodoc
class __$$PostWidgetStateImplCopyWithImpl<$Res>
    extends _$PostWidgetStateCopyWithImpl<$Res, _$PostWidgetStateImpl>
    implements _$$PostWidgetStateImplCopyWith<$Res> {
  __$$PostWidgetStateImplCopyWithImpl(
      _$PostWidgetStateImpl _value, $Res Function(_$PostWidgetStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostWidgetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentCon = freezed,
    Object? commentFocus = freezed,
    Object? status = null,
    Object? comments = null,
    Object? postModel = freezed,
    Object? userModel = freezed,
    Object? savedPostModel = freezed,
    Object? sheetHeight = freezed,
  }) {
    return _then(_$PostWidgetStateImpl(
      commentCon: freezed == commentCon
          ? _value.commentCon
          : commentCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      commentFocus: freezed == commentFocus
          ? _value.commentFocus
          : commentFocus // ignore: cast_nullable_to_non_nullable
              as FocusNode?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      postModel: freezed == postModel
          ? _value.postModel
          : postModel // ignore: cast_nullable_to_non_nullable
              as PostModel?,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      savedPostModel: freezed == savedPostModel
          ? _value.savedPostModel
          : savedPostModel // ignore: cast_nullable_to_non_nullable
              as SavedPostModel?,
      sheetHeight: freezed == sheetHeight
          ? _value.sheetHeight
          : sheetHeight // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$PostWidgetStateImpl implements _PostWidgetState {
  _$PostWidgetStateImpl(
      {this.commentCon = null,
      this.commentFocus = null,
      this.status = LoadStatus.initial,
      final List<CommentModel> comments = const [],
      this.postModel = null,
      this.userModel = null,
      this.savedPostModel = null,
      this.sheetHeight = 300})
      : _comments = comments;

  @override
  @JsonKey()
  final TextEditingController? commentCon;
  @override
  @JsonKey()
  final FocusNode? commentFocus;
  @override
  @JsonKey()
  final LoadStatus status;
  final List<CommentModel> _comments;
  @override
  @JsonKey()
  List<CommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  @JsonKey()
  final PostModel? postModel;
  @override
  @JsonKey()
  final UserModel? userModel;
  @override
  @JsonKey()
  final SavedPostModel? savedPostModel;
  @override
  @JsonKey()
  final double? sheetHeight;

  @override
  String toString() {
    return 'PostWidgetState(commentCon: $commentCon, commentFocus: $commentFocus, status: $status, comments: $comments, postModel: $postModel, userModel: $userModel, savedPostModel: $savedPostModel, sheetHeight: $sheetHeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostWidgetStateImpl &&
            (identical(other.commentCon, commentCon) ||
                other.commentCon == commentCon) &&
            (identical(other.commentFocus, commentFocus) ||
                other.commentFocus == commentFocus) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.postModel, postModel) ||
                other.postModel == postModel) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel) &&
            (identical(other.savedPostModel, savedPostModel) ||
                other.savedPostModel == savedPostModel) &&
            (identical(other.sheetHeight, sheetHeight) ||
                other.sheetHeight == sheetHeight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      commentCon,
      commentFocus,
      status,
      const DeepCollectionEquality().hash(_comments),
      postModel,
      userModel,
      savedPostModel,
      sheetHeight);

  /// Create a copy of PostWidgetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostWidgetStateImplCopyWith<_$PostWidgetStateImpl> get copyWith =>
      __$$PostWidgetStateImplCopyWithImpl<_$PostWidgetStateImpl>(
          this, _$identity);
}

abstract class _PostWidgetState implements PostWidgetState {
  factory _PostWidgetState(
      {final TextEditingController? commentCon,
      final FocusNode? commentFocus,
      final LoadStatus status,
      final List<CommentModel> comments,
      final PostModel? postModel,
      final UserModel? userModel,
      final SavedPostModel? savedPostModel,
      final double? sheetHeight}) = _$PostWidgetStateImpl;

  @override
  TextEditingController? get commentCon;
  @override
  FocusNode? get commentFocus;
  @override
  LoadStatus get status;
  @override
  List<CommentModel> get comments;
  @override
  PostModel? get postModel;
  @override
  UserModel? get userModel;
  @override
  SavedPostModel? get savedPostModel;
  @override
  double? get sheetHeight;

  /// Create a copy of PostWidgetState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostWidgetStateImplCopyWith<_$PostWidgetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
