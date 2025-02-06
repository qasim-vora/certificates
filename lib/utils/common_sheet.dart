import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';
import 'package:social_app/constants/app_constants.dart';
import 'package:social_app/router/navigation_methods.dart';
import 'package:social_app/utils/snackbar_widget.dart';

import '../constants/app_fonts.dart';
import '../theme/app_color.dart';
import '../widget/common_text.dart';
import 'common_methods.dart';
import 'logger_util.dart';

class CommonSheet {

  static Future showImageBottomSheet({Function(String)? fileName}) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      backgroundColor: Colors.white,
      enableDrag: true,
      //isDismissible: false,
      context: AppConstants.globalKey.currentContext!,
      builder: (builder) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  width: 45,
                  height: 5,
                  color: const Color(0xffCCCCCC),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      CommonText(
                        fontSize: AppFontSize.font_20,
                        textAlign: TextAlign.center,
                        fontWeight: AppFontWeight.black,
                        color: AppColors.blackColor,
                        text: "LocaleKeys.uploadImage.tr",
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () async {
                              bool isEnable = await CommonMethods.askPermission(
                                permission: Permission.camera,
                                whichPermission: "LocaleKeys.camera.tr",
                              );
                              if (isEnable) {
                                final XFile? imageFile =
                                await ImagePicker().pickImage(
                                  source: ImageSource.camera,
                                  imageQuality: 65,
                                );
                                if (imageFile != null) {
                                  AppConstants.globalKey.currentContext!.pop();
                                  fileName!(imageFile.path);
                                  logger.e('imageFile.path: ${imageFile.path}');
                                }
                              }
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(16)),
                                color: AppColors.primaryColor,
                              ),
                              height: 105,
                              width: 105,
                              child: const Padding(
                                padding: EdgeInsets.all(36.0),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              bool isEnable = await CommonMethods.askPermission(
                                permission:
                                await CommonMethods.getGalleryPermission(),
                                whichPermission: "LocaleKeys.gallery.tr",
                              );
                              if (isEnable) {
                                final XFile? imageFile =
                                await ImagePicker().pickImage(
                                  source: ImageSource.gallery,
                                  imageQuality: 65,
                                );
                                if (imageFile != null) {
                                  if (imageFile.path
                                      .toLowerCase()
                                      .endsWith('jpg') ||
                                      imageFile.path
                                          .toLowerCase()
                                          .endsWith('png') ||
                                      imageFile.path
                                          .toLowerCase()
                                          .endsWith('jpeg') ||
                                      imageFile.path
                                          .toLowerCase()
                                          .endsWith('heic')) {
                                    bool isValidImage =
                                    await CommonMethods.imageSize(
                                      imageFile,
                                    );
                                    if (isValidImage) {
                                      if (imageFile != null) {
                                      AppConstants.globalKey.currentContext!.pop();
                                        fileName!(imageFile.path);
                                      }
                                    } else {
                                      showToast(AppConstants.globalKey.currentContext!,"LocaleKeys.maximumImageSizeError.tr",success: false);
                                    }
                                  } else {
                                    showToast(AppConstants.globalKey.currentContext!,"error",success: false);
                                  }

                                  logger.e('imageFile.path: ${imageFile.path}');
                                }
                              }
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(16)),
                                color: AppColors.primaryColor,
                              ),
                              height: 105,
                              width: 105,
                              child: const Padding(
                                padding: EdgeInsets.all(36.0),
                                child: Icon(
                                  Icons.perm_media_outlined,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
              ],
            );
          },
        );
      },
    );
  }

  static Future commentBottomSheet({Function(String)? fileName}) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      backgroundColor: Colors.white,
      enableDrag: true,
      //isDismissible: false,
      context: AppConstants.globalKey.currentContext!,
      builder: (builder) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  width: 45,
                  height: 5,
                  color: const Color(0xffCCCCCC),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      CommonText(
                        fontSize: AppFontSize.font_20,
                        textAlign: TextAlign.center,
                        fontWeight: AppFontWeight.black,
                        color: AppColors.blackColor,
                        text: "LocaleKeys.uploadImage.tr",
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () async {
                              bool isEnable = await CommonMethods.askPermission(
                                permission: Permission.camera,
                                whichPermission: "LocaleKeys.camera.tr",
                              );
                              if (isEnable) {
                                final XFile? imageFile =
                                await ImagePicker().pickImage(
                                  source: ImageSource.camera,
                                  imageQuality: 65,
                                );
                                if (imageFile != null) {
                                  AppConstants.globalKey.currentContext!.pop();
                                  fileName!(imageFile.path);
                                  logger.e('imageFile.path: ${imageFile.path}');
                                }
                              }
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(16)),
                                color: AppColors.primaryColor,
                              ),
                              height: 105,
                              width: 105,
                              child: const Padding(
                                padding: EdgeInsets.all(36.0),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              bool isEnable = await CommonMethods.askPermission(
                                permission:
                                await CommonMethods.getGalleryPermission(),
                                whichPermission: "LocaleKeys.gallery.tr",
                              );
                              if (isEnable) {
                                final XFile? imageFile =
                                await ImagePicker().pickImage(
                                  source: ImageSource.gallery,
                                  imageQuality: 65,
                                );
                                if (imageFile != null) {
                                  if (imageFile.path
                                      .toLowerCase()
                                      .endsWith('jpg') ||
                                      imageFile.path
                                          .toLowerCase()
                                          .endsWith('png') ||
                                      imageFile.path
                                          .toLowerCase()
                                          .endsWith('jpeg') ||
                                      imageFile.path
                                          .toLowerCase()
                                          .endsWith('heic')) {
                                    bool isValidImage =
                                    await CommonMethods.imageSize(
                                      imageFile,
                                    );
                                    if (isValidImage) {
                                      if (imageFile != null) {
                                      AppConstants.globalKey.currentContext!.pop();
                                        fileName!(imageFile.path);
                                      }
                                    } else {
                                      showToast(AppConstants.globalKey.currentContext!,"LocaleKeys.maximumImageSizeError.tr",success: false);
                                    }
                                  } else {
                                    showToast(AppConstants.globalKey.currentContext!,"error",success: false);
                                  }

                                  logger.e('imageFile.path: ${imageFile.path}');
                                }
                              }
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(16)),
                                color: AppColors.primaryColor,
                              ),
                              height: 105,
                              width: 105,
                              child: const Padding(
                                padding: EdgeInsets.all(36.0),
                                child: Icon(
                                  Icons.perm_media_outlined,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
              ],
            );
          },
        );
      },
    );
  }
}