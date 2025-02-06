// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @HiveField(1)
  @JsonKey(name: "_id")
  String get userId => throw _privateConstructorUsedError;
  @HiveField(2)
  String get email => throw _privateConstructorUsedError;
  @HiveField(3)
  String get password => throw _privateConstructorUsedError;
  @HiveField(4)
  String get gender => throw _privateConstructorUsedError;
  @HiveField(5)
  String get fullName => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get nickName => throw _privateConstructorUsedError;
  @HiveField(7)
  String get address => throw _privateConstructorUsedError;
  @HiveField(8)
  String get profilePhoto => throw _privateConstructorUsedError;
  @HiveField(9)
  dynamic get birthDate => throw _privateConstructorUsedError;
  @HiveField(10)
  int get followers => throw _privateConstructorUsedError;
  @HiveField(11)
  int get following => throw _privateConstructorUsedError;
  @HiveField(12)
  List<dynamic> get intrest => throw _privateConstructorUsedError;
  @HiveField(13)
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @HiveField(14)
  String get username => throw _privateConstructorUsedError;
  @HiveField(15)
  bool get profileSet => throw _privateConstructorUsedError;
  @HiveField(16)
  int get likeCount => throw _privateConstructorUsedError;
  @HiveField(17)
  int get postCount => throw _privateConstructorUsedError;
  @HiveField(18)
  String get pushToken => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@HiveField(1) @JsonKey(name: "_id") String userId,
      @HiveField(2) String email,
      @HiveField(3) String password,
      @HiveField(4) String gender,
      @HiveField(5) String fullName,
      @HiveField(6) String? nickName,
      @HiveField(7) String address,
      @HiveField(8) String profilePhoto,
      @HiveField(9) dynamic birthDate,
      @HiveField(10) int followers,
      @HiveField(11) int following,
      @HiveField(12) List<dynamic> intrest,
      @HiveField(13) DateTime updatedAt,
      @HiveField(14) String username,
      @HiveField(15) bool profileSet,
      @HiveField(16) int likeCount,
      @HiveField(17) int postCount,
      @HiveField(18) String pushToken});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = null,
    Object? password = null,
    Object? gender = null,
    Object? fullName = null,
    Object? nickName = freezed,
    Object? address = null,
    Object? profilePhoto = null,
    Object? birthDate = freezed,
    Object? followers = null,
    Object? following = null,
    Object? intrest = null,
    Object? updatedAt = null,
    Object? username = null,
    Object? profileSet = null,
    Object? likeCount = null,
    Object? postCount = null,
    Object? pushToken = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      profilePhoto: null == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int,
      intrest: null == intrest
          ? _value.intrest
          : intrest // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profileSet: null == profileSet
          ? _value.profileSet
          : profileSet // ignore: cast_nullable_to_non_nullable
              as bool,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      postCount: null == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
      pushToken: null == pushToken
          ? _value.pushToken
          : pushToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) @JsonKey(name: "_id") String userId,
      @HiveField(2) String email,
      @HiveField(3) String password,
      @HiveField(4) String gender,
      @HiveField(5) String fullName,
      @HiveField(6) String? nickName,
      @HiveField(7) String address,
      @HiveField(8) String profilePhoto,
      @HiveField(9) dynamic birthDate,
      @HiveField(10) int followers,
      @HiveField(11) int following,
      @HiveField(12) List<dynamic> intrest,
      @HiveField(13) DateTime updatedAt,
      @HiveField(14) String username,
      @HiveField(15) bool profileSet,
      @HiveField(16) int likeCount,
      @HiveField(17) int postCount,
      @HiveField(18) String pushToken});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = null,
    Object? password = null,
    Object? gender = null,
    Object? fullName = null,
    Object? nickName = freezed,
    Object? address = null,
    Object? profilePhoto = null,
    Object? birthDate = freezed,
    Object? followers = null,
    Object? following = null,
    Object? intrest = null,
    Object? updatedAt = null,
    Object? username = null,
    Object? profileSet = null,
    Object? likeCount = null,
    Object? postCount = null,
    Object? pushToken = null,
  }) {
    return _then(_$UserModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      profilePhoto: null == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int,
      intrest: null == intrest
          ? _value._intrest
          : intrest // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profileSet: null == profileSet
          ? _value.profileSet
          : profileSet // ignore: cast_nullable_to_non_nullable
              as bool,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      postCount: null == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
      pushToken: null == pushToken
          ? _value.pushToken
          : pushToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@HiveField(1) @JsonKey(name: "_id") required this.userId,
      @HiveField(2) required this.email,
      @HiveField(3) required this.password,
      @HiveField(4) required this.gender,
      @HiveField(5) required this.fullName,
      @HiveField(6) required this.nickName,
      @HiveField(7) required this.address,
      @HiveField(8) required this.profilePhoto,
      @HiveField(9) required this.birthDate,
      @HiveField(10) required this.followers,
      @HiveField(11) required this.following,
      @HiveField(12) required final List<dynamic> intrest,
      @HiveField(13) required this.updatedAt,
      @HiveField(14) required this.username,
      @HiveField(15) required this.profileSet,
      @HiveField(16) required this.likeCount,
      @HiveField(17) required this.postCount,
      @HiveField(18) required this.pushToken})
      : _intrest = intrest;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @HiveField(1)
  @JsonKey(name: "_id")
  final String userId;
  @override
  @HiveField(2)
  final String email;
  @override
  @HiveField(3)
  final String password;
  @override
  @HiveField(4)
  final String gender;
  @override
  @HiveField(5)
  final String fullName;
  @override
  @HiveField(6)
  final String? nickName;
  @override
  @HiveField(7)
  final String address;
  @override
  @HiveField(8)
  final String profilePhoto;
  @override
  @HiveField(9)
  final dynamic birthDate;
  @override
  @HiveField(10)
  final int followers;
  @override
  @HiveField(11)
  final int following;
  final List<dynamic> _intrest;
  @override
  @HiveField(12)
  List<dynamic> get intrest {
    if (_intrest is EqualUnmodifiableListView) return _intrest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_intrest);
  }

  @override
  @HiveField(13)
  final DateTime updatedAt;
  @override
  @HiveField(14)
  final String username;
  @override
  @HiveField(15)
  final bool profileSet;
  @override
  @HiveField(16)
  final int likeCount;
  @override
  @HiveField(17)
  final int postCount;
  @override
  @HiveField(18)
  final String pushToken;

  @override
  String toString() {
    return 'UserModel(userId: $userId, email: $email, password: $password, gender: $gender, fullName: $fullName, nickName: $nickName, address: $address, profilePhoto: $profilePhoto, birthDate: $birthDate, followers: $followers, following: $following, intrest: $intrest, updatedAt: $updatedAt, username: $username, profileSet: $profileSet, likeCount: $likeCount, postCount: $postCount, pushToken: $pushToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            const DeepCollectionEquality().equals(other.birthDate, birthDate) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.following, following) ||
                other.following == following) &&
            const DeepCollectionEquality().equals(other._intrest, _intrest) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profileSet, profileSet) ||
                other.profileSet == profileSet) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.postCount, postCount) ||
                other.postCount == postCount) &&
            (identical(other.pushToken, pushToken) ||
                other.pushToken == pushToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      email,
      password,
      gender,
      fullName,
      nickName,
      address,
      profilePhoto,
      const DeepCollectionEquality().hash(birthDate),
      followers,
      following,
      const DeepCollectionEquality().hash(_intrest),
      updatedAt,
      username,
      profileSet,
      likeCount,
      postCount,
      pushToken);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@HiveField(1) @JsonKey(name: "_id") required final String userId,
      @HiveField(2) required final String email,
      @HiveField(3) required final String password,
      @HiveField(4) required final String gender,
      @HiveField(5) required final String fullName,
      @HiveField(6) required final String? nickName,
      @HiveField(7) required final String address,
      @HiveField(8) required final String profilePhoto,
      @HiveField(9) required final dynamic birthDate,
      @HiveField(10) required final int followers,
      @HiveField(11) required final int following,
      @HiveField(12) required final List<dynamic> intrest,
      @HiveField(13) required final DateTime updatedAt,
      @HiveField(14) required final String username,
      @HiveField(15) required final bool profileSet,
      @HiveField(16) required final int likeCount,
      @HiveField(17) required final int postCount,
      @HiveField(18) required final String pushToken}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @HiveField(1)
  @JsonKey(name: "_id")
  String get userId;
  @override
  @HiveField(2)
  String get email;
  @override
  @HiveField(3)
  String get password;
  @override
  @HiveField(4)
  String get gender;
  @override
  @HiveField(5)
  String get fullName;
  @override
  @HiveField(6)
  String? get nickName;
  @override
  @HiveField(7)
  String get address;
  @override
  @HiveField(8)
  String get profilePhoto;
  @override
  @HiveField(9)
  dynamic get birthDate;
  @override
  @HiveField(10)
  int get followers;
  @override
  @HiveField(11)
  int get following;
  @override
  @HiveField(12)
  List<dynamic> get intrest;
  @override
  @HiveField(13)
  DateTime get updatedAt;
  @override
  @HiveField(14)
  String get username;
  @override
  @HiveField(15)
  bool get profileSet;
  @override
  @HiveField(16)
  int get likeCount;
  @override
  @HiveField(17)
  int get postCount;
  @override
  @HiveField(18)
  String get pushToken;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
