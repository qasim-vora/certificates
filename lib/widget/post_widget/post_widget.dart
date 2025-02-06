import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:social_app/constants/app_constants.dart';
import 'package:social_app/enums/loading_status.dart';
import 'package:social_app/src/presentation/notifier/post/post_notifier.dart';
import 'package:social_app/utils/common_methods.dart';
import 'package:social_app/widget/post_widget/notifier/post_widget_notifier.dart';
import 'package:social_app/widget/post_widget/notifier/state/post_widget_state.dart';

import '../../constants/app_fonts.dart';
import '../../gen/assets.gen.dart';
import '../../src/domain/model/post_model/post_model.dart';
import '../../theme/app_color.dart';
import '../app_text_field.dart';
import '../common_text.dart';
import '../network_image.dart';

class PostWidget extends StatelessWidget {
  final PostModel post;
  const PostWidget({super.key,required this.post});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
         NetworkImageWidget(
          url: post.url,
           fit: BoxFit.fill,
          height: 320,
          borderRadius: 20,
        ),
        Positioned(
            right: -10,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Assets.image.svg.base.svg(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 10,),
                    likeButton(),
                    const SizedBox(height: 10,),
                    addComment(),

                    const SizedBox(height: 10,),
                    saveButton(),
                    const SizedBox(height: 10,),
                  ],
                )
              ],
            )
        ),

         Positioned(
          left: 15,
          top: 15,
          child: Row(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              NetworkImageWidget(
                url: post.auther.profilePhoto,
                height: 60,
                borderRadius: 30,
                width: 60,
                fit: BoxFit.fill,
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text:  post.auther.username,
                    fontWeight: AppFontWeight.bold,
                    fontSize: AppFontSize.font_15,
                    color: AppColors.whiteColor,
                  ),
                  CommonText(
                    text: post.auther.nickName ??"",
                    fontWeight: AppFontWeight.regular,
                    fontSize: AppFontSize.font_14,
                    color: AppColors.whiteColor,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget saveButton() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final state = ref.watch(postWidgetNotifierProvider(post));
        return Column(
          children: [
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: (){
                ref.read(postWidgetNotifierProvider(post).notifier).savePost();
              },
              child: SvgPicture.asset(
                   (AppConstants.savedPostModel?.saved.any((p)=> p.postId == state.postModel!.postId) ?? false)
                ?
                   Assets.image.svg.bookmark.path :  Assets.image.svg.bookmarkOutline.path,
                height: 25,
                colorFilter: const ColorFilter.mode(AppColors.whiteColor, BlendMode.srcIn),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const CommonText(
              text: "",
              fontWeight: AppFontWeight.bold,
              fontSize: AppFontSize.font_10,
              color: AppColors.whiteColor,
            ),
          ],
        );
      },
    );
  }

  Widget likeButton() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final state = ref.watch(postWidgetNotifierProvider(post));
        return InkWell(
          onTap: () {
            ref.watch(PostWidgetNotifierProvider(post).notifier).likePost();
          },
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Column(
            children: [
              SvgPicture.asset(state.postModel!.likes.any((e)=> e.userId == AppConstants.userModel!.userId)
                  ? Assets.image.svg.heart.path : Assets.image.svg.heartOutline.path,
                  colorFilter:  ColorFilter.mode(
                      state.postModel!.likes.any((e)=> e.userId == AppConstants.userModel!.userId)
                          ? AppColors.redColor : AppColors.whiteColor ,
                      BlendMode.srcIn,
                  ),
                height: 25,
              ),

              const SizedBox(
                height: 5,
              ),
              CommonText(
                text: state.postModel!.likes.isNotEmpty ? state.postModel!.likes.length.toString() : "",
                fontWeight: AppFontWeight.bold,
                fontSize: AppFontSize.font_10,
                color: AppColors.whiteColor,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget addComment() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final state = ref.watch(PostWidgetNotifierProvider(post));
        return InkWell(
          onTap: () {
            ref.watch(postWidgetNotifierProvider(post).notifier)
                .getAllComments();
            CommonMethods.appBottomSheet(
                titleName: "Comments",
                padding: const EdgeInsets.only(left: 10, right: 20),
                content: Consumer(
                  builder:
                      (BuildContext context, WidgetRef ref, Widget? child) {
                    final state = ref.watch(postWidgetNotifierProvider(post));
                    return Column(
                      children: [
                        Skeletonizer(
                          enabled: state.status == LoadStatus.loading,
                          child: SizedBox(
                            height: state.sheetHeight,
                            child: state.comments.isNotEmpty ? ListView.builder(
                                shrinkWrap: true,
                                primary: false,
                                padding: EdgeInsets.zero,
                                itemCount: state.comments.length,
                                itemBuilder: (_, index) {
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          NetworkImageWidget(
                                            url: state.comments[index].auther.profilePhoto,
                                            height: 45,
                                            borderRadius: 30,
                                            width: 45,
                                            fit: BoxFit.fill,
                                          ),
                                          const SizedBox(
                                            width: 30,
                                          ),
                                          CommonText(
                                            text: state
                                                .comments[index].auther.username,
                                            fontWeight: AppFontWeight.bold,
                                            fontSize: AppFontSize.font_16,
                                            color: AppColors.blackColor,
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CommonText(
                                          text:
                                          state.comments[index].comment ?? "",
                                          fontWeight: AppFontWeight.semiBold,
                                          fontSize: AppFontSize.font_14,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                    ],
                                  );
                                }) :
                            const Center(
                              child: CommonText(
                                text: "No comments yet",
                                fontWeight: AppFontWeight.bold,
                                fontSize: AppFontSize.font_15,
                                color: AppColors.blackColor,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: CommonTextField(
                                  textEditingController: state.commentCon,
                                  focusNode: state.commentFocus,
                                  filledColor: AppColors.lightEmptyFilledColor,
                                  hintText: "Add comments....",
                                  textInputAction: TextInputAction.done,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  ref
                                      .read(postWidgetNotifierProvider(post)
                                          .notifier)
                                      .addComments();
                                },
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                child: const CommonText(
                                  text: "Post",
                                  fontWeight: AppFontWeight.bold,
                                  fontSize: AppFontSize.font_14,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ));
          },
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Column(
            children: [
              InkWell(
                child: Assets.image.svg.chatFilled.svg(
                  colorFilter: const ColorFilter.mode(AppColors.whiteColor, BlendMode.srcIn)
                ),
              ),
              const SizedBox(
                height: 5,
              ),
               CommonText(
                text: state.comments.isNotEmpty ? state.comments.length.toString() : "",
                fontWeight: AppFontWeight.bold,
                fontSize: AppFontSize.font_10,
                color: AppColors.whiteColor,
              ),
            ],
          ),
        );
      },
    );
  }
}
extension FirstWhereExt<T> on List<T> {
  /// The first element satisfying [test], or `null` if there are none.
  T? firstWhereOrNull(bool Function(T element) test) {
    for (var element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}