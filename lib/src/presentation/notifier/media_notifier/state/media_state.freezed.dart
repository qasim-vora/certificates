// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MediaState {
  List<File> get media => throw _privateConstructorUsedError;
  List<File> get selected => throw _privateConstructorUsedError;
  RequestType get requestType => throw _privateConstructorUsedError;

  /// Create a copy of MediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaStateCopyWith<MediaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaStateCopyWith<$Res> {
  factory $MediaStateCopyWith(
          MediaState value, $Res Function(MediaState) then) =
      _$MediaStateCopyWithImpl<$Res, MediaState>;
  @useResult
  $Res call({List<File> media, List<File> selected, RequestType requestType});
}

/// @nodoc
class _$MediaStateCopyWithImpl<$Res, $Val extends MediaState>
    implements $MediaStateCopyWith<$Res> {
  _$MediaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
    Object? selected = null,
    Object? requestType = null,
  }) {
    return _then(_value.copyWith(
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<File>,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<File>,
      requestType: null == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as RequestType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaStateImplCopyWith<$Res>
    implements $MediaStateCopyWith<$Res> {
  factory _$$MediaStateImplCopyWith(
          _$MediaStateImpl value, $Res Function(_$MediaStateImpl) then) =
      __$$MediaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<File> media, List<File> selected, RequestType requestType});
}

/// @nodoc
class __$$MediaStateImplCopyWithImpl<$Res>
    extends _$MediaStateCopyWithImpl<$Res, _$MediaStateImpl>
    implements _$$MediaStateImplCopyWith<$Res> {
  __$$MediaStateImplCopyWithImpl(
      _$MediaStateImpl _value, $Res Function(_$MediaStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
    Object? selected = null,
    Object? requestType = null,
  }) {
    return _then(_$MediaStateImpl(
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<File>,
      selected: null == selected
          ? _value._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<File>,
      requestType: null == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as RequestType,
    ));
  }
}

/// @nodoc

class _$MediaStateImpl implements _MediaState {
  _$MediaStateImpl(
      {final List<File> media = const [],
      final List<File> selected = const [],
      this.requestType = RequestType.common})
      : _media = media,
        _selected = selected;

  final List<File> _media;
  @override
  @JsonKey()
  List<File> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  final List<File> _selected;
  @override
  @JsonKey()
  List<File> get selected {
    if (_selected is EqualUnmodifiableListView) return _selected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selected);
  }

  @override
  @JsonKey()
  final RequestType requestType;

  @override
  String toString() {
    return 'MediaState(media: $media, selected: $selected, requestType: $requestType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaStateImpl &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            const DeepCollectionEquality().equals(other._selected, _selected) &&
            (identical(other.requestType, requestType) ||
                other.requestType == requestType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_media),
      const DeepCollectionEquality().hash(_selected),
      requestType);

  /// Create a copy of MediaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaStateImplCopyWith<_$MediaStateImpl> get copyWith =>
      __$$MediaStateImplCopyWithImpl<_$MediaStateImpl>(this, _$identity);
}

abstract class _MediaState implements MediaState {
  factory _MediaState(
      {final List<File> media,
      final List<File> selected,
      final RequestType requestType}) = _$MediaStateImpl;

  @override
  List<File> get media;
  @override
  List<File> get selected;
  @override
  RequestType get requestType;

  /// Create a copy of MediaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaStateImplCopyWith<_$MediaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
