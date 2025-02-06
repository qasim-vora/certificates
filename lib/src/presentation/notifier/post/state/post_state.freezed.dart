// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostState {
  List<File> get media => throw _privateConstructorUsedError;
  bool get allowComments => throw _privateConstructorUsedError;
  TextEditingController? get desCon => throw _privateConstructorUsedError;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostStateCopyWith<PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;
  @useResult
  $Res call(
      {List<File> media, bool allowComments, TextEditingController? desCon});
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
    Object? allowComments = null,
    Object? desCon = freezed,
  }) {
    return _then(_value.copyWith(
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<File>,
      allowComments: null == allowComments
          ? _value.allowComments
          : allowComments // ignore: cast_nullable_to_non_nullable
              as bool,
      desCon: freezed == desCon
          ? _value.desCon
          : desCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostStateImplCopyWith<$Res>
    implements $PostStateCopyWith<$Res> {
  factory _$$PostStateImplCopyWith(
          _$PostStateImpl value, $Res Function(_$PostStateImpl) then) =
      __$$PostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<File> media, bool allowComments, TextEditingController? desCon});
}

/// @nodoc
class __$$PostStateImplCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostStateImpl>
    implements _$$PostStateImplCopyWith<$Res> {
  __$$PostStateImplCopyWithImpl(
      _$PostStateImpl _value, $Res Function(_$PostStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
    Object? allowComments = null,
    Object? desCon = freezed,
  }) {
    return _then(_$PostStateImpl(
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<File>,
      allowComments: null == allowComments
          ? _value.allowComments
          : allowComments // ignore: cast_nullable_to_non_nullable
              as bool,
      desCon: freezed == desCon
          ? _value.desCon
          : desCon // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ));
  }
}

/// @nodoc

class _$PostStateImpl implements _PostState {
  _$PostStateImpl(
      {final List<File> media = const [],
      this.allowComments = true,
      this.desCon = null})
      : _media = media;

  final List<File> _media;
  @override
  @JsonKey()
  List<File> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  @JsonKey()
  final bool allowComments;
  @override
  @JsonKey()
  final TextEditingController? desCon;

  @override
  String toString() {
    return 'PostState(media: $media, allowComments: $allowComments, desCon: $desCon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostStateImpl &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.allowComments, allowComments) ||
                other.allowComments == allowComments) &&
            (identical(other.desCon, desCon) || other.desCon == desCon));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_media), allowComments, desCon);

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      __$$PostStateImplCopyWithImpl<_$PostStateImpl>(this, _$identity);
}

abstract class _PostState implements PostState {
  factory _PostState(
      {final List<File> media,
      final bool allowComments,
      final TextEditingController? desCon}) = _$PostStateImpl;

  @override
  List<File> get media;
  @override
  bool get allowComments;
  @override
  TextEditingController? get desCon;

  /// Create a copy of PostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostStateImplCopyWith<_$PostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
