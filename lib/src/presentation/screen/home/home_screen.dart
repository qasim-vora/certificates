import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_app/gen/assets.gen.dart';
import 'package:social_app/src/presentation/notifier/home/home_notifier.dart';
import 'package:social_app/theme/app_color.dart';
import 'package:social_app/widget/network_image.dart';

import '../../../../constants/app_fonts.dart';
import '../../../../widget/common_text.dart';
import '../../../../widget/post_widget/post_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final state = ref.watch(homeNotifierProvider);
    return SafeArea(
      top: false,
      bottom: true,
      child: Container(
        clipBehavior: Clip.hardEdge,

        decoration: const BoxDecoration(),
        child: Column(
          children: [
          state.lists.isNotEmpty ?  Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.only(top: 25,left: 10,right: 10,bottom: 15),

                    itemBuilder: (context,index){
                      return  PostWidget(post:  state.lists[index],);
                    },
                    separatorBuilder: (_,__)=>const SizedBox(height: 10,),
                    itemCount: state.lists.length
                )
            ) : const SizedBox()
          ],
        ),
      ),
    );
  }


}
