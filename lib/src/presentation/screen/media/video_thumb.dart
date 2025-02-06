import 'dart:io';

import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../theme/app_color.dart';
import '../../../../utils/common_methods.dart';

class AsyncImage extends StatefulWidget {
  final File imageFile;
  final double? h;
  final double?  w;

  const AsyncImage({super.key, required this.imageFile, this.h, this.w});

  @override
  _AsyncImageState createState() => _AsyncImageState();
}

class _AsyncImageState extends State<AsyncImage> {
  ImageProvider<Object>? _imageProvider;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  Future<void> _loadImage() async {
    try {
      final imageProvider = await CommonMethods.imageProvider(widget.imageFile);
      if (mounted) {
        setState(() {
          _imageProvider = imageProvider;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
      // Handle error if needed
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return  Skeletonizer.zone(
        child: Bone(
          height: widget.h,
          width: widget.w,
          borderRadius:BorderRadius.circular(10),
        ),
      );
    } else if (_imageProvider != null) {
      return Image(
        image: _imageProvider!,
        fit: BoxFit.cover,
        height: widget.h,
        width: widget.w,
      );
    } else {
      return const SizedBox(); // Placeholder or error handling
    }
  }
}
