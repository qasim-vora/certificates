// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) {
  return _CommentModel.fromJson(json);
}

/// @nodoc
mixin _$CommentModel {
  @JsonKey(name: "_id")
  String get commentId => throw _privateConstructorUsedError;
  @JsonKey(name: "comment")
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(name: "postId")
  String get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "auther")
  UserModel get auther => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this CommentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentModelCopyWith<CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentModelCopyWith<$Res> {
  factory $CommentModelCopyWith(
          CommentModel value, $Res Function(CommentModel) then) =
      _$CommentModelCopyWithImpl<$Res, CommentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String commentId,
      @JsonKey(name: "comment") String comment,
      @JsonKey(name: "postId") String postId,
      @JsonKey(name: "auther") UserModel auther,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt});

  $UserModelCopyWith<$Res> get auther;
}

/// @nodoc
class _$CommentModelCopyWithImpl<$Res, $Val extends CommentModel>
    implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? comment = null,
    Object? postId = null,
    Object? auther = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      auther: null == auther
          ? _value.auther
          : auther // ignore: cast_nullable_to_non_nullable
              as UserModel,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get auther {
    return $UserModelCopyWith<$Res>(_value.auther, (value) {
      return _then(_value.copyWith(auther: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentModelImplCopyWith<$Res>
    implements $CommentModelCopyWith<$Res> {
  factory _$$CommentModelImplCopyWith(
          _$CommentModelImpl value, $Res Function(_$CommentModelImpl) then) =
      __$$CommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String commentId,
      @JsonKey(name: "comment") String comment,
      @JsonKey(name: "postId") String postId,
      @JsonKey(name: "auther") UserModel auther,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt});

  @override
  $UserModelCopyWith<$Res> get auther;
}

/// @nodoc
class __$$CommentModelImplCopyWithImpl<$Res>
    extends _$CommentModelCopyWithImpl<$Res, _$CommentModelImpl>
    implements _$$CommentModelImplCopyWith<$Res> {
  __$$CommentModelImplCopyWithImpl(
      _$CommentModelImpl _value, $Res Function(_$CommentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? comment = null,
    Object? postId = null,
    Object? auther = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CommentModelImpl(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      auther: null == auther
          ? _value.auther
          : auther // ignore: cast_nullable_to_non_nullable
              as UserModel,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentModelImpl implements _CommentModel {
  const _$CommentModelImpl(
      {@JsonKey(name: "_id") required this.commentId,
      @JsonKey(name: "comment") required this.comment,
      @JsonKey(name: "postId") required this.postId,
      @JsonKey(name: "auther") required this.auther,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "updatedAt") required this.updatedAt});

  factory _$CommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String commentId;
  @override
  @JsonKey(name: "comment")
  final String comment;
  @override
  @JsonKey(name: "postId")
  final String postId;
  @override
  @JsonKey(name: "auther")
  final UserModel auther;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;

  @override
  String toString() {
    return 'CommentModel(commentId: $commentId, comment: $comment, postId: $postId, auther: $auther, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentModelImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.auther, auther) || other.auther == auther) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, commentId, comment, postId, auther, createdAt, updatedAt);

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      __$$CommentModelImplCopyWithImpl<_$CommentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentModelImplToJson(
      this,
    );
  }
}

abstract class _CommentModel implements CommentModel {
  const factory _CommentModel(
          {@JsonKey(name: "_id") required final String commentId,
          @JsonKey(name: "comment") required final String comment,
          @JsonKey(name: "postId") required final String postId,
          @JsonKey(name: "auther") required final UserModel auther,
          @JsonKey(name: "createdAt") required final DateTime createdAt,
          @JsonKey(name: "updatedAt") required final DateTime updatedAt}) =
      _$CommentModelImpl;

  factory _CommentModel.fromJson(Map<String, dynamic> json) =
      _$CommentModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get commentId;
  @override
  @JsonKey(name: "comment")
  String get comment;
  @override
  @JsonKey(name: "postId")
  String get postId;
  @override
  @JsonKey(name: "auther")
  UserModel get auther;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;

  /// Create a copy of CommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
