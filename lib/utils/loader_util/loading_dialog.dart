import 'dart:ui';

import 'package:flutter/material.dart';

import 'logo_animated_loading.dart';

class LoadingDialog {
  const LoadingDialog(this.context);

  final BuildContext context;

  static LoadingDialog of(BuildContext context) {
    return LoadingDialog(context);
  }

  void show({String? feedback}) {
    _openLoadingDialog(context, feedback);
  }

  void hide({value}) {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
  }

  void _openLoadingDialog(BuildContext context, String? feedback) {
    showDialog(
      barrierDismissible: false,
      context: context,
      barrierColor: Colors.black54,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 2, sigmaX: 2),
          child: WillPopScope(
            onWillPop: () async {
              return false;
            },
            child: Dialog(
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const LogoAnimatedLoading(),
                  if (feedback != null) const SizedBox(height: 4),
                  if (feedback != null)
                    Text(
                      feedback,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

extension LoadingDialogExtension on BuildContext {
  LoadingDialog get loading => LoadingDialog.of(this);
}
