import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:social_app/router/navigation_methods.dart';
import 'package:social_app/src/presentation/notifier/media_notifier/media_notifier.dart';
import 'package:social_app/src/presentation/notifier/media_notifier/state/media_state.dart';
import 'package:social_app/src/presentation/notifier/post/post_notifier.dart';
import 'package:social_app/src/presentation/screen/media/video_thumb.dart';
import 'package:social_app/theme/app_color.dart';
import 'package:social_app/utils/common_methods.dart';
import 'package:social_app/utils/file_ext.dart';

import '../../../../constants/app_fonts.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../widget/common_filled_button.dart';
import '../../../../widget/common_text.dart';

class MediaScreen extends ConsumerWidget {
  const MediaScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final state = ref.watch(mediaNotifierProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
        child: Stack(
        alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                const SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: (){
                          context.pop();
                        },
                        child: Assets.image.svg.close.svg()
                    ),
                    const SizedBox(width: 20,),
                    const Expanded(
                      child: CommonText(
                        text: "All Media",
                        textAlign: TextAlign.center,
                        fontWeight: AppFontWeight.bold,
                        fontSize: AppFontSize.h4,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),

                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      tabItems(ref, state,RequestType.common),
                      tabItems(ref, state,RequestType.image),
                      tabItems(ref, state,RequestType.video),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      tabIndicator(ref,RequestType.common,state),
                      tabIndicator(ref,RequestType.image,state),
                      tabIndicator(ref,RequestType.video,state),
                    ],
                  ),
                ),

                state.media.isNotEmpty ?  Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      primary: false,
                      padding: EdgeInsets.zero,
                      itemCount: state.media.length,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                              ref.read(mediaNotifierProvider.notifier).onSelect(file: state.media[index]);
                          },
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child : state.media[index].fileType == FileType.image ?
                                  Image.file(
                                    state.media[index],
                                    fit: BoxFit.cover,

                                  ) :

                                  AsyncImage(imageFile: state.media[index])
                              ),
                              Positioned(
                                top: 10,right: 10,
                                child: SvgPicture.asset(
                                  state.selected.contains(state.media[index]) ?
                                  Assets.image.svg.selected.path : Assets.image.svg.unSelect.path,
                                  fit: BoxFit.scaleDown,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 6,
                      ),
                    )
                ) : const SizedBox(),


              ],
            ),
            (state.selected.isNotEmpty && state.media.isNotEmpty) ?
            Positioned(
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),),
                ),
                child: CommonFilledButton(
                  onPressed: () {
                   ref.read(mediaNotifierProvider.notifier).goToPost();
                  },
                  buttonText: "Next",
                ),
              ),
            ) : const SizedBox()
          ],
        ),
      ),
    );
  }

  Widget tabIndicator(WidgetRef ref, RequestType type, MediaState state) {
    return Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: state.requestType == type ? AppColors.primaryColor : AppColors.greyColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height:  state.requestType == type ?  3 : 1,
                ),
              );
  }

  Widget tabItems(WidgetRef ref, MediaState state, RequestType request) {
    return Expanded(
      child: InkWell(
                    onTap: (){
                      ref.read(mediaNotifierProvider.notifier).changeTab(request);
                    },
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: CommonText(
                      text: request == RequestType.common ? "All" :
                      request == RequestType.image ? "Photos" : "Videos",
                      textAlign: TextAlign.center,
                      color: state.requestType == request
                          ?  AppColors.primaryColor : AppColors.greyColor,
                      fontWeight:state.requestType == request
                          ? AppFontWeight.bold: AppFontWeight.regular,
                      fontSize: AppFontSize.h6,
                    ),
                  ),
    );
  }


}
