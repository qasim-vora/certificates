// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  LoadStatus get loadStatus => throw _privateConstructorUsedError;
  int get step => throw _privateConstructorUsedError;
  String get profile => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  List<InterestModel> get interestList => throw _privateConstructorUsedError;
  TextEditingController? get addressCon => throw _privateConstructorUsedError;
  TextEditingController? get userNameCon => throw _privateConstructorUsedError;
  TextEditingController? get fullNameCon => throw _privateConstructorUsedError;
  TextEditingController? get dateCon => throw _privateConstructorUsedError;
  TextEditingController? get emailCon => throw _privateConstructorUsedError;
  DateTime? get birthDate => throw _privateConstructorUsedError;
  UserModel? get userModel => throw _privateConstructorUsedError;
  GlobalKey<FormState>? get formKey => throw _privateConstructorUsedError;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {LoadStatus loadStatus,
      int step,
      String profile,
      Gender gender,
      List<InterestModel> interestList,
      TextEditingController? addressCon,
      TextEditingController? userNameCon,
      TextEditingController? fullNameCon,
      TextEditingController? dateCon,
      TextEditingController? emailCon,
      DateTime? birthDate,
      UserModel? userModel,
      GlobalKey<FormState>? formKey});

  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadStatus = null,
    Object? step = null,
    Object? profile = null,
    Object? gender = null,
    Object? interestList = null,
    Object? addressCon = freezed,
    Object? userNameCon = freezed,
    Object? fullNameCon = freezed,
    Object? dateCon = freezed,
    Object? emailCon = freezed,
    Object? birthDate = freezed,
    Object? userModel = freezed,
    Object? formKey = freezed,
  }) {
    return _then(_value.copyWith(
      loadStatus: null == loadStatus
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      interestList: null == interestList
          ? _value.interestList
          : interestList // ignore: cast_nullable_to_non_nullable
              as List<InterestModel>,
      addressCon: freezed == addressCon
          ? _value.addressCon
          : addressCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      userNameCon: freezed == userNameCon
          ? _value.userNameCon
          : userNameCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      fullNameCon: freezed == fullNameCon
          ? _value.fullNameCon
          : fullNameCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      dateCon: freezed == dateCon
          ? _value.dateCon
          : dateCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      emailCon: freezed == emailCon
          ? _value.emailCon
          : emailCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      formKey: freezed == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>?,
    ) as $Val);
  }

  /// Create a copy of ProfileState
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
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadStatus loadStatus,
      int step,
      String profile,
      Gender gender,
      List<InterestModel> interestList,
      TextEditingController? addressCon,
      TextEditingController? userNameCon,
      TextEditingController? fullNameCon,
      TextEditingController? dateCon,
      TextEditingController? emailCon,
      DateTime? birthDate,
      UserModel? userModel,
      GlobalKey<FormState>? formKey});

  @override
  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadStatus = null,
    Object? step = null,
    Object? profile = null,
    Object? gender = null,
    Object? interestList = null,
    Object? addressCon = freezed,
    Object? userNameCon = freezed,
    Object? fullNameCon = freezed,
    Object? dateCon = freezed,
    Object? emailCon = freezed,
    Object? birthDate = freezed,
    Object? userModel = freezed,
    Object? formKey = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      loadStatus: null == loadStatus
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      interestList: null == interestList
          ? _value._interestList
          : interestList // ignore: cast_nullable_to_non_nullable
              as List<InterestModel>,
      addressCon: freezed == addressCon
          ? _value.addressCon
          : addressCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      userNameCon: freezed == userNameCon
          ? _value.userNameCon
          : userNameCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      fullNameCon: freezed == fullNameCon
          ? _value.fullNameCon
          : fullNameCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      dateCon: freezed == dateCon
          ? _value.dateCon
          : dateCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      emailCon: freezed == emailCon
          ? _value.emailCon
          : emailCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      formKey: freezed == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>?,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  _$ProfileStateImpl(
      {this.loadStatus = LoadStatus.initial,
      this.step = 0,
      this.profile = "",
      this.gender = Gender.Other,
      final List<InterestModel> interestList = const [],
      this.addressCon = null,
      this.userNameCon = null,
      this.fullNameCon = null,
      this.dateCon = null,
      this.emailCon = null,
      this.birthDate = null,
      this.userModel = null,
      this.formKey = null})
      : _interestList = interestList;

  @override
  @JsonKey()
  final LoadStatus loadStatus;
  @override
  @JsonKey()
  final int step;
  @override
  @JsonKey()
  final String profile;
  @override
  @JsonKey()
  final Gender gender;
  final List<InterestModel> _interestList;
  @override
  @JsonKey()
  List<InterestModel> get interestList {
    if (_interestList is EqualUnmodifiableListView) return _interestList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interestList);
  }

  @override
  @JsonKey()
  final TextEditingController? addressCon;
  @override
  @JsonKey()
  final TextEditingController? userNameCon;
  @override
  @JsonKey()
  final TextEditingController? fullNameCon;
  @override
  @JsonKey()
  final TextEditingController? dateCon;
  @override
  @JsonKey()
  final TextEditingController? emailCon;
  @override
  @JsonKey()
  final DateTime? birthDate;
  @override
  @JsonKey()
  final UserModel? userModel;
  @override
  @JsonKey()
  final GlobalKey<FormState>? formKey;

  @override
  String toString() {
    return 'ProfileState(loadStatus: $loadStatus, step: $step, profile: $profile, gender: $gender, interestList: $interestList, addressCon: $addressCon, userNameCon: $userNameCon, fullNameCon: $fullNameCon, dateCon: $dateCon, emailCon: $emailCon, birthDate: $birthDate, userModel: $userModel, formKey: $formKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.loadStatus, loadStatus) ||
                other.loadStatus == loadStatus) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality()
                .equals(other._interestList, _interestList) &&
            (identical(other.addressCon, addressCon) ||
                other.addressCon == addressCon) &&
            (identical(other.userNameCon, userNameCon) ||
                other.userNameCon == userNameCon) &&
            (identical(other.fullNameCon, fullNameCon) ||
                other.fullNameCon == fullNameCon) &&
            (identical(other.dateCon, dateCon) || other.dateCon == dateCon) &&
            (identical(other.emailCon, emailCon) ||
                other.emailCon == emailCon) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel) &&
            (identical(other.formKey, formKey) || other.formKey == formKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loadStatus,
      step,
      profile,
      gender,
      const DeepCollectionEquality().hash(_interestList),
      addressCon,
      userNameCon,
      fullNameCon,
      dateCon,
      emailCon,
      birthDate,
      userModel,
      formKey);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  factory _ProfileState(
      {final LoadStatus loadStatus,
      final int step,
      final String profile,
      final Gender gender,
      final List<InterestModel> interestList,
      final TextEditingController? addressCon,
      final TextEditingController? userNameCon,
      final TextEditingController? fullNameCon,
      final TextEditingController? dateCon,
      final TextEditingController? emailCon,
      final DateTime? birthDate,
      final UserModel? userModel,
      final GlobalKey<FormState>? formKey}) = _$ProfileStateImpl;

  @override
  LoadStatus get loadStatus;
  @override
  int get step;
  @override
  String get profile;
  @override
  Gender get gender;
  @override
  List<InterestModel> get interestList;
  @override
  TextEditingController? get addressCon;
  @override
  TextEditingController? get userNameCon;
  @override
  TextEditingController? get fullNameCon;
  @override
  TextEditingController? get dateCon;
  @override
  TextEditingController? get emailCon;
  @override
  DateTime? get birthDate;
  @override
  UserModel? get userModel;
  @override
  GlobalKey<FormState>? get formKey;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
