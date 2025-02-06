import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:social_app/enums/loading_status.dart';
import 'package:social_app/src/domain/model/user_model/user_model.dart';
import 'package:social_app/src/presentation/notifier/user/user_notifier.dart';
import 'package:social_app/widget/network_image.dart';

import '../../../../constants/app_fonts.dart';
import '../../../../enums/menu_type.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../theme/app_color.dart';
import '../../../../widget/common_filled_button.dart';
import '../../../../widget/common_text.dart';

class UserScreen extends ConsumerWidget {
  final String id;
  const UserScreen({super.key,required this.id});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final state = ref.watch(userNotifierProvider(id));
    return  Column(
      children: [

        Skeletonizer(
          enabled: state.status == LoadStatus.loading,
          child: Column(
            children: [
              SafeArea(
                bottom: false,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: (){

                        },
                        child: Assets.image.svg.back.svg()
                    ),
                    const SizedBox(width: 20,),
                     CommonText(
                      text: state.user!.username,
                      fontWeight: AppFontWeight.bold,
                      fontSize: AppFontSize.h4,
                    ),
                  ],
                ),
              ),



               Center(
                child: NetworkImageWidget(
                  url: state.user!.profilePhoto,
                  height: 120,
                  width: 120,
                  borderRadius: 100,
                ),
              ),
               CommonText(
                text:state.user!.username,
                fontWeight: AppFontWeight.semiBold,
                fontSize: AppFontSize.h5,
              ),


              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: CommonFilledButton(
                        onPressed: () {
                        },
                        buttonText: "Edit Profile",
                        buttonHeight: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Column(
                      children: [
                        CommonText(
                          text: state.user!.postCount.toString(),
                          fontWeight: AppFontWeight.bold,
                          fontSize: AppFontSize.h4,
                        ),
                        const CommonText(
                          text:"Posts",
                          fontWeight: AppFontWeight.regular,
                          fontSize: AppFontSize.h6,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                     Column(
                      children: [
                        CommonText(
                          text:state.user!.followers.toString(),
                          fontWeight: AppFontWeight.bold,
                          fontSize: AppFontSize.h4,
                        ),
                        const CommonText(
                          text:"Followers",
                          fontWeight: AppFontWeight.regular,
                          fontSize: AppFontSize.h6,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                     Column(
                      children: [
                        CommonText(
                          text:state.user!.following.toString(),
                          fontWeight: AppFontWeight.bold,
                          fontSize: AppFontSize.h4,
                        ),
                        const CommonText(
                          text:"Followings",
                          fontWeight: AppFontWeight.regular,
                          fontSize: AppFontSize.h6,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                      Column(
                      children: [
                        CommonText(
                          text: state.user!.likeCount.toString(),
                          fontWeight: AppFontWeight.bold,
                          fontSize: AppFontSize.h4,
                        ),
                        const CommonText(
                          text:"Likes",
                          fontWeight: AppFontWeight.regular,
                          fontSize: AppFontSize.h6,
                        ),
                      ],
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 5),
          child: Row(
            children: [
              tabIndicator(MenuType.post),
              tabIndicator(MenuType.like),
              tabIndicator(MenuType.saved),
            ],
          ),
        ),

        postList(),

      ],
    );
  }

  Widget tabIndicator(MenuType type) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final state = ref.watch(userNotifierProvider(id));
        return Expanded(
          child: InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: (){
              ref.read(userNotifierProvider(id).notifier).onTabChange(type: type);
            },
            child: Column(
              children: [
                SvgPicture.asset(
                  type == MenuType.post ? Assets.image.svg.grid.path :
                  type == MenuType.like ? Assets.image.svg.like.path :
                  Assets.image.svg.save.path,
                  height: 25,
                  colorFilter: ColorFilter.mode(
                      state.type == type ? AppColors.primaryColor : AppColors.greyColor.withOpacity(0.5),
                      BlendMode.srcIn,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: state.type == type ? AppColors.primaryColor : AppColors.greyColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height:  state.type == type ?  3 : 1,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  postList() {
   return  Consumer(
     builder: (BuildContext context, WidgetRef ref, Widget? child) {
       final state = ref.watch(userNotifierProvider(id));
       return state.post.isNotEmpty ? Expanded(
           child: GridView.builder(
             shrinkWrap: true,
             primary: false,
             padding: const EdgeInsets.symmetric(horizontal: 5),
             itemCount: state.post.length,
             itemBuilder: (context,index){
               return InkWell(
                 onTap: (){

                 },
                 highlightColor: Colors.transparent,
                 splashColor: Colors.transparent,
                 child: NetworkImageWidget(
                     url: state.post[index].url,
                   borderRadius: 10,
                 ),
               );
             },
             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 3,
               mainAxisSpacing: 6,
               crossAxisSpacing: 6,
             ),
           )
       ) : const SizedBox();
     },
   ) ;
  }
}
