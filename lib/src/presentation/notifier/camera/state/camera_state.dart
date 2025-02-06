import 'dart:async';

import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/model/common_model/file_model.dart';

part 'camera_state.freezed.dart';

@freezed
class CameraState with _$CameraState {
  factory CameraState({
    @Default([]) List<CameraDescription> cameraDes,
    @Default(null) CameraController? controller,
    @Default(0) int camMode,
    @Default(0) double scale,
    @Default(0) double min,
    @Default(0) double max,
    @Default(0) int flashMode,
    @Default(0) int cameIndex,
    @Default(false) bool isRecording,
    @Default(false) bool captured,
    @Default(0) int  timer,
    @Default(null) StreamController<int>?  seconds,
    @Default(null) Timer? time,
    @Default(null) FileModel? filePath


  }) = _CameraState;
}