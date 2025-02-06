// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InterestModel _$InterestModelFromJson(Map<String, dynamic> json) {
  return _InterestModel.fromJson(json);
}

/// @nodoc
mixin _$InterestModel {
  @JsonKey(name: "_id")
  String get interestId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: false)
  bool? get isSelected => throw _privateConstructorUsedError;

  /// Serializes this InterestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InterestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterestModelCopyWith<InterestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestModelCopyWith<$Res> {
  factory $InterestModelCopyWith(
          InterestModel value, $Res Function(InterestModel) then) =
      _$InterestModelCopyWithImpl<$Res, InterestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String interestId,
      String title,
      @JsonKey(
          includeFromJson: false, includeToJson: false, defaultValue: false)
      bool? isSelected});
}

/// @nodoc
class _$InterestModelCopyWithImpl<$Res, $Val extends InterestModel>
    implements $InterestModelCopyWith<$Res> {
  _$InterestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interestId = null,
    Object? title = null,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      interestId: null == interestId
          ? _value.interestId
          : interestId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterestModelImplCopyWith<$Res>
    implements $InterestModelCopyWith<$Res> {
  factory _$$InterestModelImplCopyWith(
          _$InterestModelImpl value, $Res Function(_$InterestModelImpl) then) =
      __$$InterestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String interestId,
      String title,
      @JsonKey(
          includeFromJson: false, includeToJson: false, defaultValue: false)
      bool? isSelected});
}

/// @nodoc
class __$$InterestModelImplCopyWithImpl<$Res>
    extends _$InterestModelCopyWithImpl<$Res, _$InterestModelImpl>
    implements _$$InterestModelImplCopyWith<$Res> {
  __$$InterestModelImplCopyWithImpl(
      _$InterestModelImpl _value, $Res Function(_$InterestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interestId = null,
    Object? title = null,
    Object? isSelected = freezed,
  }) {
    return _then(_$InterestModelImpl(
      interestId: null == interestId
          ? _value.interestId
          : interestId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterestModelImpl implements _InterestModel {
  const _$InterestModelImpl(
      {@JsonKey(name: "_id") required this.interestId,
      required this.title,
      @JsonKey(
          includeFromJson: false, includeToJson: false, defaultValue: false)
      this.isSelected});

  factory _$InterestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterestModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String interestId;
  @override
  final String title;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: false)
  final bool? isSelected;

  @override
  String toString() {
    return 'InterestModel(interestId: $interestId, title: $title, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestModelImpl &&
            (identical(other.interestId, interestId) ||
                other.interestId == interestId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, interestId, title, isSelected);

  /// Create a copy of InterestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestModelImplCopyWith<_$InterestModelImpl> get copyWith =>
      __$$InterestModelImplCopyWithImpl<_$InterestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterestModelImplToJson(
      this,
    );
  }
}

abstract class _InterestModel implements InterestModel {
  const factory _InterestModel(
      {@JsonKey(name: "_id") required final String interestId,
      required final String title,
      @JsonKey(
          includeFromJson: false, includeToJson: false, defaultValue: false)
      final bool? isSelected}) = _$InterestModelImpl;

  factory _InterestModel.fromJson(Map<String, dynamic> json) =
      _$InterestModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get interestId;
  @override
  String get title;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: false)
  bool? get isSelected;

  /// Create a copy of InterestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterestModelImplCopyWith<_$InterestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
