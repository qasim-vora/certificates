// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  @HiveField(1)
  @JsonKey(name: "_id")
  String get postId => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "postype")
  String get postype => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: "location")
  String get location => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: "allowComments")
  bool get allowComments => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: "saved")
  int get saved => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: "share")
  int get share => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: "auther")
  UserModel get auther => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: "comments")
  List<UserModel> get comments => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: "likes")
  List<UserModel> get likes => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @HiveField(13)
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PostModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {@HiveField(1) @JsonKey(name: "_id") String postId,
      @HiveField(2) @JsonKey(name: "postype") String postype,
      @HiveField(3) @JsonKey(name: "url") String url,
      @HiveField(4) @JsonKey(name: "location") String location,
      @HiveField(5) @JsonKey(name: "description") String description,
      @HiveField(6) @JsonKey(name: "allowComments") bool allowComments,
      @HiveField(7) @JsonKey(name: "saved") int saved,
      @HiveField(8) @JsonKey(name: "share") int share,
      @HiveField(9) @JsonKey(name: "auther") UserModel auther,
      @HiveField(10) @JsonKey(name: "comments") List<UserModel> comments,
      @HiveField(11) @JsonKey(name: "likes") List<UserModel> likes,
      @HiveField(12) @JsonKey(name: "createdAt") DateTime createdAt,
      @HiveField(13) @JsonKey(name: "updatedAt") DateTime updatedAt});

  $UserModelCopyWith<$Res> get auther;
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? postype = null,
    Object? url = null,
    Object? location = null,
    Object? description = null,
    Object? allowComments = null,
    Object? saved = null,
    Object? share = null,
    Object? auther = null,
    Object? comments = null,
    Object? likes = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      postype: null == postype
          ? _value.postype
          : postype // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      allowComments: null == allowComments
          ? _value.allowComments
          : allowComments // ignore: cast_nullable_to_non_nullable
              as bool,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as int,
      share: null == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as int,
      auther: null == auther
          ? _value.auther
          : auther // ignore: cast_nullable_to_non_nullable
              as UserModel,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
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

  /// Create a copy of PostModel
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
abstract class _$$PostModelImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$PostModelImplCopyWith(
          _$PostModelImpl value, $Res Function(_$PostModelImpl) then) =
      __$$PostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) @JsonKey(name: "_id") String postId,
      @HiveField(2) @JsonKey(name: "postype") String postype,
      @HiveField(3) @JsonKey(name: "url") String url,
      @HiveField(4) @JsonKey(name: "location") String location,
      @HiveField(5) @JsonKey(name: "description") String description,
      @HiveField(6) @JsonKey(name: "allowComments") bool allowComments,
      @HiveField(7) @JsonKey(name: "saved") int saved,
      @HiveField(8) @JsonKey(name: "share") int share,
      @HiveField(9) @JsonKey(name: "auther") UserModel auther,
      @HiveField(10) @JsonKey(name: "comments") List<UserModel> comments,
      @HiveField(11) @JsonKey(name: "likes") List<UserModel> likes,
      @HiveField(12) @JsonKey(name: "createdAt") DateTime createdAt,
      @HiveField(13) @JsonKey(name: "updatedAt") DateTime updatedAt});

  @override
  $UserModelCopyWith<$Res> get auther;
}

/// @nodoc
class __$$PostModelImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$PostModelImpl>
    implements _$$PostModelImplCopyWith<$Res> {
  __$$PostModelImplCopyWithImpl(
      _$PostModelImpl _value, $Res Function(_$PostModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? postype = null,
    Object? url = null,
    Object? location = null,
    Object? description = null,
    Object? allowComments = null,
    Object? saved = null,
    Object? share = null,
    Object? auther = null,
    Object? comments = null,
    Object? likes = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PostModelImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      postype: null == postype
          ? _value.postype
          : postype // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      allowComments: null == allowComments
          ? _value.allowComments
          : allowComments // ignore: cast_nullable_to_non_nullable
              as bool,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as int,
      share: null == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as int,
      auther: null == auther
          ? _value.auther
          : auther // ignore: cast_nullable_to_non_nullable
              as UserModel,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
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
@HiveType(typeId: 3)
class _$PostModelImpl implements _PostModel {
  const _$PostModelImpl(
      {@HiveField(1) @JsonKey(name: "_id") required this.postId,
      @HiveField(2) @JsonKey(name: "postype") required this.postype,
      @HiveField(3) @JsonKey(name: "url") required this.url,
      @HiveField(4) @JsonKey(name: "location") required this.location,
      @HiveField(5) @JsonKey(name: "description") required this.description,
      @HiveField(6) @JsonKey(name: "allowComments") required this.allowComments,
      @HiveField(7) @JsonKey(name: "saved") required this.saved,
      @HiveField(8) @JsonKey(name: "share") required this.share,
      @HiveField(9) @JsonKey(name: "auther") required this.auther,
      @HiveField(10)
      @JsonKey(name: "comments")
      required final List<UserModel> comments,
      @HiveField(11)
      @JsonKey(name: "likes")
      required final List<UserModel> likes,
      @HiveField(12) @JsonKey(name: "createdAt") required this.createdAt,
      @HiveField(13) @JsonKey(name: "updatedAt") required this.updatedAt})
      : _comments = comments,
        _likes = likes;

  factory _$PostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostModelImplFromJson(json);

  @override
  @HiveField(1)
  @JsonKey(name: "_id")
  final String postId;
  @override
  @HiveField(2)
  @JsonKey(name: "postype")
  final String postype;
  @override
  @HiveField(3)
  @JsonKey(name: "url")
  final String url;
  @override
  @HiveField(4)
  @JsonKey(name: "location")
  final String location;
  @override
  @HiveField(5)
  @JsonKey(name: "description")
  final String description;
  @override
  @HiveField(6)
  @JsonKey(name: "allowComments")
  final bool allowComments;
  @override
  @HiveField(7)
  @JsonKey(name: "saved")
  final int saved;
  @override
  @HiveField(8)
  @JsonKey(name: "share")
  final int share;
  @override
  @HiveField(9)
  @JsonKey(name: "auther")
  final UserModel auther;
  final List<UserModel> _comments;
  @override
  @HiveField(10)
  @JsonKey(name: "comments")
  List<UserModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final List<UserModel> _likes;
  @override
  @HiveField(11)
  @JsonKey(name: "likes")
  List<UserModel> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  @override
  @HiveField(12)
  @JsonKey(name: "createdAt")
  final DateTime createdAt;
  @override
  @HiveField(13)
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;

  @override
  String toString() {
    return 'PostModel(postId: $postId, postype: $postype, url: $url, location: $location, description: $description, allowComments: $allowComments, saved: $saved, share: $share, auther: $auther, comments: $comments, likes: $likes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostModelImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.postype, postype) || other.postype == postype) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.allowComments, allowComments) ||
                other.allowComments == allowComments) &&
            (identical(other.saved, saved) || other.saved == saved) &&
            (identical(other.share, share) || other.share == share) &&
            (identical(other.auther, auther) || other.auther == auther) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postId,
      postype,
      url,
      location,
      description,
      allowComments,
      saved,
      share,
      auther,
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(_likes),
      createdAt,
      updatedAt);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      __$$PostModelImplCopyWithImpl<_$PostModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostModelImplToJson(
      this,
    );
  }
}

abstract class _PostModel implements PostModel {
  const factory _PostModel(
      {@HiveField(1) @JsonKey(name: "_id") required final String postId,
      @HiveField(2) @JsonKey(name: "postype") required final String postype,
      @HiveField(3) @JsonKey(name: "url") required final String url,
      @HiveField(4) @JsonKey(name: "location") required final String location,
      @HiveField(5)
      @JsonKey(name: "description")
      required final String description,
      @HiveField(6)
      @JsonKey(name: "allowComments")
      required final bool allowComments,
      @HiveField(7) @JsonKey(name: "saved") required final int saved,
      @HiveField(8) @JsonKey(name: "share") required final int share,
      @HiveField(9) @JsonKey(name: "auther") required final UserModel auther,
      @HiveField(10)
      @JsonKey(name: "comments")
      required final List<UserModel> comments,
      @HiveField(11)
      @JsonKey(name: "likes")
      required final List<UserModel> likes,
      @HiveField(12)
      @JsonKey(name: "createdAt")
      required final DateTime createdAt,
      @HiveField(13)
      @JsonKey(name: "updatedAt")
      required final DateTime updatedAt}) = _$PostModelImpl;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$PostModelImpl.fromJson;

  @override
  @HiveField(1)
  @JsonKey(name: "_id")
  String get postId;
  @override
  @HiveField(2)
  @JsonKey(name: "postype")
  String get postype;
  @override
  @HiveField(3)
  @JsonKey(name: "url")
  String get url;
  @override
  @HiveField(4)
  @JsonKey(name: "location")
  String get location;
  @override
  @HiveField(5)
  @JsonKey(name: "description")
  String get description;
  @override
  @HiveField(6)
  @JsonKey(name: "allowComments")
  bool get allowComments;
  @override
  @HiveField(7)
  @JsonKey(name: "saved")
  int get saved;
  @override
  @HiveField(8)
  @JsonKey(name: "share")
  int get share;
  @override
  @HiveField(9)
  @JsonKey(name: "auther")
  UserModel get auther;
  @override
  @HiveField(10)
  @JsonKey(name: "comments")
  List<UserModel> get comments;
  @override
  @HiveField(11)
  @JsonKey(name: "likes")
  List<UserModel> get likes;
  @override
  @HiveField(12)
  @JsonKey(name: "createdAt")
  DateTime get createdAt;
  @override
  @HiveField(13)
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
