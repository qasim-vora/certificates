import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_manager/photo_manager.dart';

part 'media_state.freezed.dart';

@freezed
class MediaState with _$MediaState {
  factory MediaState({
    @Default([])  List<File> media,
    @Default([])  List<File> selected,
    @Default(RequestType.common) RequestType requestType,

  }) = _MediaState;
}