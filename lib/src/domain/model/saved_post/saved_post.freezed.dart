// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavedPostModel _$SavedPostModelFromJson(Map<String, dynamic> json) {
  return _SavedPostModel.fromJson(json);
}

/// @nodoc
mixin _$SavedPostModel {
  @HiveField(1)
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "saved")
  List<PostModel> get saved => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: "user")
  String get user => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this SavedPostModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SavedPostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavedPostModelCopyWith<SavedPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedPostModelCopyWith<$Res> {
  factory $SavedPostModelCopyWith(
          SavedPostModel value, $Res Function(SavedPostModel) then) =
      _$SavedPostModelCopyWithImpl<$Res, SavedPostModel>;
  @useResult
  $Res call(
      {@HiveField(1) @JsonKey(name: "_id") String id,
      @HiveField(2) @JsonKey(name: "saved") List<PostModel> saved,
      @HiveField(3) @JsonKey(name: "user") String user,
      @HiveField(4) @JsonKey(name: "createdAt") DateTime createdAt});
}

/// @nodoc
class _$SavedPostModelCopyWithImpl<$Res, $Val extends SavedPostModel>
    implements $SavedPostModelCopyWith<$Res> {
  _$SavedPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavedPostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? saved = null,
    Object? user = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedPostModelImplCopyWith<$Res>
    implements $SavedPostModelCopyWith<$Res> {
  factory _$$SavedPostModelImplCopyWith(_$SavedPostModelImpl value,
          $Res Function(_$SavedPostModelImpl) then) =
      __$$SavedPostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) @JsonKey(name: "_id") String id,
      @HiveField(2) @JsonKey(name: "saved") List<PostModel> saved,
      @HiveField(3) @JsonKey(name: "user") String user,
      @HiveField(4) @JsonKey(name: "createdAt") DateTime createdAt});
}

/// @nodoc
class __$$SavedPostModelImplCopyWithImpl<$Res>
    extends _$SavedPostModelCopyWithImpl<$Res, _$SavedPostModelImpl>
    implements _$$SavedPostModelImplCopyWith<$Res> {
  __$$SavedPostModelImplCopyWithImpl(
      _$SavedPostModelImpl _value, $Res Function(_$SavedPostModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedPostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? saved = null,
    Object? user = null,
    Object? createdAt = null,
  }) {
    return _then(_$SavedPostModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      saved: null == saved
          ? _value._saved
          : saved // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2)
class _$SavedPostModelImpl implements _SavedPostModel {
  const _$SavedPostModelImpl(
      {@HiveField(1) @JsonKey(name: "_id") required this.id,
      @HiveField(2)
      @JsonKey(name: "saved")
      required final List<PostModel> saved,
      @HiveField(3) @JsonKey(name: "user") required this.user,
      @HiveField(4) @JsonKey(name: "createdAt") required this.createdAt})
      : _saved = saved;

  factory _$SavedPostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedPostModelImplFromJson(json);

  @override
  @HiveField(1)
  @JsonKey(name: "_id")
  final String id;
  final List<PostModel> _saved;
  @override
  @HiveField(2)
  @JsonKey(name: "saved")
  List<PostModel> get saved {
    if (_saved is EqualUnmodifiableListView) return _saved;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saved);
  }

  @override
  @HiveField(3)
  @JsonKey(name: "user")
  final String user;
  @override
  @HiveField(4)
  @JsonKey(name: "createdAt")
  final DateTime createdAt;

  @override
  String toString() {
    return 'SavedPostModel(id: $id, saved: $saved, user: $user, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedPostModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._saved, _saved) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_saved), user, createdAt);

  /// Create a copy of SavedPostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedPostModelImplCopyWith<_$SavedPostModelImpl> get copyWith =>
      __$$SavedPostModelImplCopyWithImpl<_$SavedPostModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedPostModelImplToJson(
      this,
    );
  }
}

abstract class _SavedPostModel implements SavedPostModel {
  const factory _SavedPostModel(
      {@HiveField(1) @JsonKey(name: "_id") required final String id,
      @HiveField(2)
      @JsonKey(name: "saved")
      required final List<PostModel> saved,
      @HiveField(3) @JsonKey(name: "user") required final String user,
      @HiveField(4)
      @JsonKey(name: "createdAt")
      required final DateTime createdAt}) = _$SavedPostModelImpl;

  factory _SavedPostModel.fromJson(Map<String, dynamic> json) =
      _$SavedPostModelImpl.fromJson;

  @override
  @HiveField(1)
  @JsonKey(name: "_id")
  String get id;
  @override
  @HiveField(2)
  @JsonKey(name: "saved")
  List<PostModel> get saved;
  @override
  @HiveField(3)
  @JsonKey(name: "user")
  String get user;
  @override
  @HiveField(4)
  @JsonKey(name: "createdAt")
  DateTime get createdAt;

  /// Create a copy of SavedPostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavedPostModelImplCopyWith<_$SavedPostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
