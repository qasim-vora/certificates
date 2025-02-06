import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_app/src/presentation/notifier/post/post_notifier.dart';
import 'package:social_app/utils/file_ext.dart';

import '../../../../constants/app_fonts.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../theme/app_color.dart';
import '../../../../widget/app_text_field.dart';
import '../../../../widget/common_filled_button.dart';
import '../../../../widget/common_text.dart';
import '../media/video_thumb.dart';

class PostScreen extends ConsumerWidget {

  const PostScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final state = ref.watch(postNotifierProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: CommonTextField(
                    textEditingController: state.desCon,
                    filledColor: AppColors.lightEmptyFilledColor,
                    hintText: "Add post description",
                    maxLines: 5,
                  ),
                ),
                const SizedBox(width: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: state.media.first.fileType == FileType.image? Image.file(
                      state.media.first,
                    height: 150,
                    width: 100,
                    fit: BoxFit.cover,
                  ) : AsyncImage(
                      imageFile: state.media.first,
                    h: 140,
                    w: 100,
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: AppColors.greyColor.withOpacity(0.3),
                thickness: 1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Assets.image.svg.chat.svg(),
                const SizedBox(width: 10,),
                const CommonText(
                  text: "Allow comments",
                  fontWeight: AppFontWeight.regular,
                  fontSize: AppFontSize.h6,
                ),
                const Spacer(),
                CupertinoSwitch(
                    value: state.allowComments,
                    onChanged: (_){
                      ref.read(postNotifierProvider.notifier).toggleSwitch();
                    }
                )
              ],
            ),
            const Spacer(),
            CommonFilledButton(
              onPressed: () {
                ref.read(postNotifierProvider.notifier).addPost();
              },
              iconWidget: Assets.image.svg.post.svg(),
              buttonText: "Post",
            ),
          ],
        ),
      ),
    );
  }
}
