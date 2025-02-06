import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter_video_info/flutter_video_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/constants/app_constants.dart';
import 'package:social_app/router/navigation_methods.dart';
import 'package:social_app/src/presentation/notifier/camera/state/camera_state.dart';
import 'package:social_app/utils/common_methods.dart';

import '../../../domain/model/common_model/file_model.dart';

part 'camera_notifier.g.dart';

@Riverpod(keepAlive: true)
class CameraNotifier extends _$CameraNotifier {
  @override
  CameraState build() {
    initCamera();
    return state;
  }

  startCamera(index) async {
    print(state.cameraDes);
    CameraController controller =
        CameraController(state.cameraDes[index], ResolutionPreset.ultraHigh);
    await controller.initialize().then((value) async {
      double max = await controller.getMaxZoomLevel();
      double min = await controller.getMinZoomLevel();
      await controller.setFlashMode(FlashMode.off);

      state = state.copyWith(
          controller: controller,
          scale: min,
          cameIndex: index,
          min: min,
          max: max);
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // e.description
            break;
          default:
            //  error: "Some thing went wrong",
            break;
        }
      }
    });
  }

  toggleFlash() {
    state = state.copyWith(
        flashMode: state.flashMode == 0
            ? 1
            : state.flashMode == 1
                ? 2
                : 0);

    if (state.flashMode == 0) {
      state.controller?.setFlashMode(FlashMode.always);
    } else if (state.flashMode == 1) {
      state.controller?.setFlashMode(FlashMode.auto);
    } else {
      state.controller?.setFlashMode(FlashMode.off);
    }
  }

  takePhoto() async {

    state = state.copyWith(captured: true);
   await Future.delayed(const Duration(milliseconds: 10),(){});
    state = state.copyWith(captured: false);
    try {
      var image = await state.controller?.takePicture();

      if(image!=null){
        state = state.copyWith(
            filePath: FileModel(
                file: File(image.path),
                fileName: image.name,
                fileType: 1,
                ext: image.path.split("/").last.split(".").last, duration: -1)
        );

      }





    } catch (e) {
      // e.toString()
    }
  }

  void recordVideo() async {
    if (state.isRecording) {
      var file = await state.controller?.stopVideoRecording();
      var cFile = await CommonMethods.compressVideo(File(file!.path));

      if (cFile != null) {
        VideoData? info = await FlutterVideoInfo().getVideoInfo(cFile.path);

        state = state.copyWith(
          isRecording: false,
          filePath: FileModel(
          file: cFile,
          fileName: cFile.path.split("/").last,
          fileType: 2,
          ext: cFile.path.split("/").last.split(".").last,
          duration: info?.duration ?? -1
          )
        );
      } else {
        //error: 'Video Compress failed'
        state = state.copyWith(isRecording: false);
      }
    } else {
      await state.controller?.prepareForVideoRecording();
      await state.controller?.startVideoRecording();
      state = state.copyWith(isRecording: true, time: null);
    }
  }

  void initCamera() async {
    state = CameraState();
    await availableCameras().then((value) {
      state = state.copyWith(cameraDes: value);
      startCamera(0);
    });

  }

  stopTimer() async {
    return state = state.copyWith(timer: 0);
  }

  switchMode(mode) {
    state = state.copyWith(camMode: mode);
  }

  void dispose() async {
    await state.controller?.dispose();
  }

  void clear() {
    state = state.copyWith(filePath: null, camMode: 0);
  }

  void setZoom(int level) {
    state.controller?.setZoomLevel(level.toDouble());
    state = state.copyWith(scale: level.toDouble());
  }
}
