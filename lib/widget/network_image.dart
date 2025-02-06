import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../gen/assets.gen.dart';

class NetworkImageWidget extends StatelessWidget {

  final String url;
  final Color? color;
  final double? borderRadius;
  final double? width;
  final double? height;
  final BoxFit fit ;
  final bool isProfile;
  final String placeholderString ;
  final BlendMode? backgroundBlendMode;

   const NetworkImageWidget({
    super.key,
  required this.url,
  this.color = Colors.white,
   this.borderRadius,
   this.width,
   this.height,
  this.fit = BoxFit.fill,
  this.isProfile = false,
  this.placeholderString = "",
  this. backgroundBlendMode,
  });



  @override
  Widget build(BuildContext context) {
    bool isValidUrl = Uri.tryParse(url)?.isAbsolute == true && url != "";
    return Container(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      decoration: BoxDecoration(
        backgroundBlendMode: backgroundBlendMode,
        color: color,
        // border: Border.all(color: AppColors.fieldBorderColor.withOpacity(0.2), width: 2),
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        boxShadow: isProfile
            ? [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: const Offset(0.0, 0.0),
            blurRadius: 8,
          ),
        ]
            : [],
      ),
      child: isValidUrl
          ? ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          child: CachedNetworkImage(
            imageUrl: url,
            fit: fit,
            progressIndicatorBuilder:
                (context, url, downloadProgress) {
              return Skeletonizer.zone(
                child: Bone(
                  height: height,
                  width: width,
                  borderRadius:
                  BorderRadius.circular(borderRadius ?? 0),
                ),
              );
            },
            errorWidget: (context, url, error) {
              return _buildPlaceHolderImage(
                  borderRadius, height, width);
            },
          ),
      )
          : _buildPlaceHolderImage(borderRadius, height, width),
    );
  }


  Widget _buildPlaceHolderImage(
       double? borderRadius, double? height, double? width) {
     return ClipRRect(
       borderRadius: BorderRadius.circular(borderRadius ?? 0),
       child: Center(
         child: Image.asset(
           Assets.image.png.splash.path,
           width: width ?? double.infinity,
           height: height ?? double.infinity,
           fit: BoxFit.cover,
         ),
       ),
     );
   }
}
