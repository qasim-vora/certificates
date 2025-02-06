// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  TextEditingController? get emailCon => throw _privateConstructorUsedError;
  TextEditingController? get passwordCon => throw _privateConstructorUsedError;
  FocusNode? get emailFocus => throw _privateConstructorUsedError;
  FocusNode? get passwordFocus => throw _privateConstructorUsedError;
  bool get show => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {TextEditingController? emailCon,
      TextEditingController? passwordCon,
      FocusNode? emailFocus,
      FocusNode? passwordFocus,
      bool show});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailCon = freezed,
    Object? passwordCon = freezed,
    Object? emailFocus = freezed,
    Object? passwordFocus = freezed,
    Object? show = null,
  }) {
    return _then(_value.copyWith(
      emailCon: freezed == emailCon
          ? _value.emailCon
          : emailCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      passwordCon: freezed == passwordCon
          ? _value.passwordCon
          : passwordCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      emailFocus: freezed == emailFocus
          ? _value.emailFocus
          : emailFocus // ignore: cast_nullable_to_non_nullable
              as FocusNode?,
      passwordFocus: freezed == passwordFocus
          ? _value.passwordFocus
          : passwordFocus // ignore: cast_nullable_to_non_nullable
              as FocusNode?,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController? emailCon,
      TextEditingController? passwordCon,
      FocusNode? emailFocus,
      FocusNode? passwordFocus,
      bool show});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailCon = freezed,
    Object? passwordCon = freezed,
    Object? emailFocus = freezed,
    Object? passwordFocus = freezed,
    Object? show = null,
  }) {
    return _then(_$LoginStateImpl(
      emailCon: freezed == emailCon
          ? _value.emailCon
          : emailCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      passwordCon: freezed == passwordCon
          ? _value.passwordCon
          : passwordCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      emailFocus: freezed == emailFocus
          ? _value.emailFocus
          : emailFocus // ignore: cast_nullable_to_non_nullable
              as FocusNode?,
      passwordFocus: freezed == passwordFocus
          ? _value.passwordFocus
          : passwordFocus // ignore: cast_nullable_to_non_nullable
              as FocusNode?,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  _$LoginStateImpl(
      {this.emailCon = null,
      this.passwordCon = null,
      this.emailFocus = null,
      this.passwordFocus = null,
      this.show = true});

  @override
  @JsonKey()
  final TextEditingController? emailCon;
  @override
  @JsonKey()
  final TextEditingController? passwordCon;
  @override
  @JsonKey()
  final FocusNode? emailFocus;
  @override
  @JsonKey()
  final FocusNode? passwordFocus;
  @override
  @JsonKey()
  final bool show;

  @override
  String toString() {
    return 'LoginState(emailCon: $emailCon, passwordCon: $passwordCon, emailFocus: $emailFocus, passwordFocus: $passwordFocus, show: $show)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.emailCon, emailCon) ||
                other.emailCon == emailCon) &&
            (identical(other.passwordCon, passwordCon) ||
                other.passwordCon == passwordCon) &&
            (identical(other.emailFocus, emailFocus) ||
                other.emailFocus == emailFocus) &&
            (identical(other.passwordFocus, passwordFocus) ||
                other.passwordFocus == passwordFocus) &&
            (identical(other.show, show) || other.show == show));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, emailCon, passwordCon, emailFocus, passwordFocus, show);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  factory _LoginState(
      {final TextEditingController? emailCon,
      final TextEditingController? passwordCon,
      final FocusNode? emailFocus,
      final FocusNode? passwordFocus,
      final bool show}) = _$LoginStateImpl;

  @override
  TextEditingController? get emailCon;
  @override
  TextEditingController? get passwordCon;
  @override
  FocusNode? get emailFocus;
  @override
  FocusNode? get passwordFocus;
  @override
  bool get show;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
