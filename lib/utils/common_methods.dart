import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:social_app/constants/app_constants.dart';
import 'package:social_app/constants/app_fonts.dart';
import 'package:social_app/router/navigation_methods.dart';
import 'package:video_compress/video_compress.dart';

import '../gen/assets.gen.dart';
import '../theme/app_color.dart';
import '../widget/common_text.dart';
import 'file_ext.dart';
import 'logger_util.dart';


class CommonMethods {


  static const MethodChannel _channel = MethodChannel('video_thumbnail');

  static String emailRegExp =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static String nameRegExp = r'^.{2,70}$';

  hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<bool> checkConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }

  static Future<String> getDeviceInfo() async {
    String appDevice = "";
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidDeviceInfo =
      await DeviceInfoPlugin().androidInfo;
      appDevice = androidDeviceInfo.model;
      logger.e("DEVICE INFO --$androidDeviceInfo");
    } else if (Platform.isIOS) {
      IosDeviceInfo iosDeviceInfo = await DeviceInfoPlugin().iosInfo;
      appDevice = iosDeviceInfo.name;
    }

    return appDevice;
  }

  ///  Method for getting Android versions



  ///  Method for requesting permission for gallery in android and ios
  static Future<Permission?> getGalleryPermission() async {
    if (Platform.isAndroid && await CommonMethods.getAndroidVersion() < 33) {
      return Permission.storage;
    } else {
      return Permission.photos;
    }
  }




  static Future<int> getAndroidVersion() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidDeviceInfo =
      await DeviceInfoPlugin().androidInfo;
      logger.log(
        "androidDeviceInfo.version.sdkInt: ${androidDeviceInfo.version.sdkInt}",
      );
      return androidDeviceInfo.version.sdkInt;
    } else {
      return 0;
    }
  }

  ///  Method for getting picked image size
  static Future<bool> imageSize(XFile file) async {
    final bytes = (await file.readAsBytes()).lengthInBytes;
    final kb = bytes / 1024;
    final mb = kb / 1024;

    logger.e("IMAGE SIZE ----$mb");

    if (mb <= 15) {
      return true;
    } else {
      return false;
    }
  }






  ///  Method for requesting location permission
  static Future<bool> askPermission({
    Permission? permission,
    String? whichPermission,
  }) async {
    bool isPermissionGranted = await permission!.isGranted;
    var shouldShowRequestRationale =
    await permission.shouldShowRequestRationale;

    if (isPermissionGranted) {
      return true;
    } else {
      if (!shouldShowRequestRationale) {
        var permissionStatus = await permission.request();
        logger.e("STATUS == $permissionStatus");
        if (permissionStatus.isPermanentlyDenied) {
          openAppSettings();
          return false;
        }
        if (permissionStatus.isGranted || permissionStatus.isLimited) {
          return true;
        } else {
          return false;
        }
      } else {
        var permissionStatus = await permission.request();
        if (permissionStatus.isGranted || permissionStatus.isLimited) {
          return true;
        } else {
          return false;
        }
      }
    }
  }


  static String getPlatformDevice() {
    String platform = "";
    if (Platform.isAndroid) {
      platform = "";
    } else if (Platform.isIOS) {
      platform = "";
    }

    return platform;
  }


  static String getConvertedDate(
      {String? inputDateFormat, String? outputDateFormat, String? date}) {
    if (date == null || date.isEmpty) {
      return "";
    }
    try {
      var dateFormat = DateFormat(outputDateFormat)
          .format(DateFormat(inputDateFormat).parse(date));
      return dateFormat;
    } catch (exception) {
      return "";
    }
  }

  static String durationToString(int duration) {
    final int hour = duration ~/ 60;
    final int minutes = duration % 60;
    if (hour > 0) {
      return '${hour.toString()}h ${minutes.toString()}m';
    } else {
      return '${minutes.toString()}m';
    }
  }




  /// date format
  static String getFormattedDate({
    DateTime? date,
    String dateFormat = "d MMM y", //
  }) {
    if (date == null) {
      return "";
    } else {
      return DateFormat(dateFormat).format(date);
    }
  }

  /// get country flag
  static String getCountryFlag({
    required String countryCode,
  }) {
    return "assets/flags/${countryCode.toLowerCase()}.png";
  }


  static bool isDark() {
    return SchedulerBinding.instance.platformDispatcher.platformBrightness ==
            Brightness.dark
        ? true
        : false;
  }

  static Future<String> getMapStyle(bool isDark) async {
    return isDark
        ? await rootBundle.loadString('assets/map/night.json')
        : await rootBundle.loadString('assets/map/light.json');
  }





  /// image picker bottom sheet
  static Future pickImageBottomSheet({
    String titleName = "",
    Function(int)? callback,
  }) async {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: AppConstants.globalKey.currentContext!,
      builder: (context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    CommonText(
                      //"Select upload option"
                      text: titleName,
                      fontFamily: AppFontFamily.fontName,
                      color: AppColors.blackColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        AppConstants.globalKey.currentContext!.pop();
                        callback!(0);
                      },
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Assets.image.svg.camera.svg(),
                          ),

                          const SizedBox(
                            width: 5,
                          ),
                          CommonText(
                            text: "context.translate.takePhoto",
                            fontFamily: AppFontFamily.fontName,
                            color: AppColors.blackColor.withOpacity(0.8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 0.5,
                      color: Colors.grey.withOpacity(0.8),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        context.pop();
                        callback!(1);
                      },
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Assets.image.svg.gallery.svg(),
                          ),

                          const SizedBox(
                            width: 5,
                          ),
                          CommonText(
                            text: "context.translate.choseGallery",
                            color: AppColors.blackColor.withOpacity(0.8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    context.pop();
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  child: CommonText(
                    text: "context.translate.cancel",
                    color: AppColors.redColor.withOpacity(0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

 static Future<Uint8List?> generateThumbnail(File file) async {

   final uint8list = await VideoCompress.getByteThumbnail(
       file.path,

       quality: 50, // default(100)
       position: -1 // default(-1)
   );

    // final thumbnailAsUint8List = await VideoThumbnail.thumbnailData(
    //   video: file.path,
    //   imageFormat: ImageFormat.PNG,
    //   maxWidth:
    //   320, // specify the width of the thumbnail, let the height auto-scaled to keep the source aspect ratio
    //   quality: 50,
    //
    // );
    return uint8list!;
  }


  static Future<String?> getThumbnail(String videoPath) async {
    final String? thumbnailPath =
    await _channel.invokeMethod('getThumbnail', {'videoPath': videoPath});
    logger.i("thumbnailPath$thumbnailPath");
    return thumbnailPath;
  }


  /// depending on file type show particular image
  static Future<ImageProvider<Object>>? imageProvider(File file) async {
    if (file.fileType == FileType.video) {
      var thumbnail =  await generateThumbnail(file);
      return MemoryImage(thumbnail!);
    } else if (file.fileType == FileType.image) {
      return FileImage(file);
    } else {
      throw Exception("Unsupported media format");
    }

  }

  static String getDuration(int totalSeconds) {
    String seconds = (totalSeconds % 60).toInt().toString().padLeft(2, '0');
    String minutes =
    ((totalSeconds / 60) % 60).toInt().toString().padLeft(2, '0');
    String hours = (totalSeconds ~/ 3600).toString().padLeft(2, '0');

    return "$minutes:$seconds";


  }

  static Future<File?> compressVideo(File file) async {
    String targetPath;

    if(Platform.isAndroid){
      var directory = await getApplicationDocumentsDirectory();
      targetPath = "${directory.path}/video";
    }else{
      var directory = await getApplicationSupportDirectory();
      targetPath = "${directory.path}/video";
    }


    var info = await VideoCompress.compressVideo(
      file.path,
      quality: VideoQuality.MediumQuality,
      deleteOrigin: false,
      includeAudio: true,
    );

    return info!.file;
  }



  static Future appBottomSheet({
    String titleName = "",
    EdgeInsetsGeometry? padding,
    required Widget content
  }) async {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: AppConstants.globalKey.currentContext!,
      builder: (BuildContext bc) {
        return SafeArea(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(bc).viewInsets.bottom),
              child:  Container(
                padding: padding ?? EdgeInsets.zero,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    CommonText(
                      text: titleName,
                      fontWeight: AppFontWeight.bold,
                      fontSize: AppFontSize.h4,
                      color: AppColors.blackColor,
                    ),
                    Divider(
                      color: AppColors.greyColor.withOpacity(0.5),
                    ),
                    const SizedBox(height: 20,),
                    content
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

}
