import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:social_app/router/navigation_methods.dart';
import 'package:social_app/src/presentation/notifier/camera/camera_notifier.dart';
import 'package:social_app/src/presentation/notifier/camera/state/camera_state.dart';
import 'package:social_app/theme/app_color.dart';

import '../../../../constants/app_fonts.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../utils/common_methods.dart';
import '../../../../widget/common_text.dart';


class CameraScreen extends ConsumerStatefulWidget {
  const CameraScreen({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends ConsumerState<CameraScreen> {
  @override
  void initState() {
    super.initState();
     WidgetsBinding.instance.addPostFrameCallback((_){
       //ref.watch(cameraNotifierProvider.notifier).startCamera(0);
     });

  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(cameraNotifierProvider);
    return Scaffold(
      body: state.controller!= null ? state.captured ? Container(
        color: AppColors.blackColor,
      ) : Stack(
        alignment: Alignment.topRight,
        children: [
          camera(state),
          select(state, context),
          Positioned(
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 50,),
                flashButton(context, state),
                const SizedBox(height: 20,),
                toggleCamera(context, state),
              ],
            ),
          ),
          cameraButtons(context, state),
          Positioned(
              bottom: 15,
              right: 30,
              child: SafeArea(
                child: InkWell(
                  onTap: () async{
                    bool isEnable = await CommonMethods.askPermission(
                      permission: await CommonMethods.getGalleryPermission(),
                      whichPermission: "App requires storage permission",
                    );
                
                    if(isEnable){
                      if (!context.mounted) return;
                      context.pushNamed(Routes.mediaScreen);
                    }
                
                  },
                  child: Column(
                    children: [
                      Assets.image.svg.upload.svg(),
                      const SizedBox(height: 10,),
                      const CommonText(
                        text: "Upload",
                        fontSize: AppFontSize.font_10,
                        color: AppColors.whiteColor,
                      )
                    ],
                  ),
                ),
              )
          )
        ],
      ) : const SizedBox(),
    );
  }

   zoomControl(CameraState state, BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        itemCount: state.max.toInt(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              ref.read(cameraNotifierProvider.notifier).setZoom( index + 1);
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Text(
                    "${index + 1}x",
                    style: TextStyle(
                        color: index + 1 == state.scale
                            ? Colors.yellow
                            : Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 10),
                  )),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10,
          );
        },
      ),
    );
  }

   camera(CameraState state) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: CameraPreview(
        state.controller!,
      ),
    );
  }

   modeSwitch(CameraState state, BuildContext context) {
    return Visibility(
      visible: !state.isRecording,
      child: IconButton(
        onPressed: () {
          ref.read(cameraNotifierProvider.notifier).switchMode( state.camMode == 0 ? 1 : 0);
        },
        icon:
        Icon(state.camMode != 0 ? Icons.camera_alt : Icons.videocam_sharp),
        color: Colors.white,
        iconSize: 35,
      ),
    );
  }

   select(CameraState state, BuildContext context) {
    return Positioned(
        top: 0,
        right: 5,
        child: Visibility(
          visible: state.filePath!=null,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    ref.read(cameraNotifierProvider.notifier).clear();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    context.pushNamed(Routes.postScreen);
                  },
                  icon: const Icon(
                    Icons.done,
                    color: Colors.white,
                  )),
            ],
          ),
        ));
  }

   cameraButtons(BuildContext context, CameraState state) {
    return Positioned(
      bottom: 0,
      child: SafeArea(
        child: Center(
          widthFactor:1.6,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               // zoomControl(state, context),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      typeChip(state,0),
                      const SizedBox(width: 10,),
                      typeChip(state,1),
                      // Spacer(flex: 1,),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                state.camMode != 0
                    ? state.isRecording
                    ? stopVideoButton(state)
                    : startVideoButton(context: context, state: state)
                    : imageButton(),
        
              ],
            ),
          ),
        ),
      ),
    );
  }

    typeChip(CameraState state, int mode) {
     return InkWell(
                  onTap: (){
                    ref.read(cameraNotifierProvider.notifier).switchMode(state.camMode == 0 ? 1 : 0);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: state.camMode == mode ? Colors.grey : Colors.grey.withOpacity(0.2),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            mode == 0 ? Assets.image.svg.photo.path : Assets.image.svg.video.path,
                          colorFilter: ColorFilter.mode(
                              state.camMode == mode ? Colors.white : Colors.grey
                          , BlendMode.srcIn),
                        ),
                        const SizedBox(width: 3,),
                        CommonText(
                          text: mode == 0 ? "Photo" : "Video",
                            color: state.camMode == mode ? Colors.white : Colors.grey,
                            fontSize: state.camMode != mode ? 10 : 12,
                            fontWeight: AppFontWeight.semiBold,
                        ),
                      ],
                    ),
                  ),
                );
   }

  toggleCamera(BuildContext context, CameraState state) {
    return GestureDetector(
      onTap: () {
        ref.read(cameraNotifierProvider.notifier).startCamera(state.cameIndex == 0 ? 1 : 0);
      },
      child: Assets.image.svg.flip.svg(),
    );
  }

  flashButton(BuildContext context, CameraState state) {
    return IconButton(
      onPressed: () =>ref.read(cameraNotifierProvider.notifier).toggleFlash(),
      icon: Icon(state.flashMode == 0
          ? Icons.flash_on
          : state.flashMode == 1
          ? Icons.flash_auto
          : Icons.flash_off),
      color: Colors.white,
      iconSize: 35,
    );
  }

  imageButton() {
    return GestureDetector(
      onTap: () async =>ref.read(cameraNotifierProvider.notifier).takePhoto(),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 3),
          borderRadius: const BorderRadius.all(Radius.circular(40)),
        ),
        child: Container(
          height: 65,
          width: 65,
          color: Colors.transparent,
        ),
      ),
    );
  }

  startVideoButton({required BuildContext context,required CameraState state}) {
    return GestureDetector(
      onTap: () {
        // context.read<CameraBloc>().add(const CameraEvent.recordVideo());
        // timer = Timer.periodic(const Duration(seconds: 1), (Timer t) async {
        //   context
        //       .read<CameraBloc>()
        //       .add(CameraEvent.startTimer(count: t.tick));
        // });
      },
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(40)),
            color: Colors.red),
      ),
    );
  }

  stopVideoButton(CameraState state) {
    return GestureDetector(
      onTap: () async {

        ref.read(cameraNotifierProvider.notifier)..recordVideo()..stopTimer();

       // timer!.cancel();
      },
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 4),
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              color: Colors.transparent,
            ),
            child: Container(
                decoration: const BoxDecoration(
                  // border: Border.all(color: Colors.transparent, width: 5),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.transparent),
                child: const Icon(
                  Icons.square,
                  color: Colors.red,
                  size: 30,
                )),
          ),
          Text(
            CommonMethods.getDuration(state.timer),
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}