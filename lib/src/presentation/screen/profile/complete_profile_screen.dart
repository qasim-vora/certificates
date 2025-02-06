import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:social_app/enums/gender_type.dart';
import 'package:social_app/enums/loading_status.dart';
import 'package:social_app/router/navigation_methods.dart';
import 'package:social_app/src/presentation/notifier/profile/profile_notifier.dart';
import 'package:social_app/src/presentation/notifier/profile/state/profile_state.dart';
import 'package:social_app/theme/app_color.dart';
import 'package:social_app/utils/common_methods.dart';

import '../../../../constants/app_fonts.dart';
import '../../../../enums/pich_image.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../utils/network_image.dart';
import '../../../../widget/app_text_field.dart';
import '../../../../widget/common_filled_button.dart';
import '../../../../widget/common_text.dart';
import '../../../../widget/date_picker/flutter_datepicker.dart';

class CompleteProfileScreen extends ConsumerWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final state = ref.watch(profileNotifierProvider);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: (){
                    ref.read(profileNotifierProvider.notifier).handleBack();

                  },
                    child: Assets.image.svg.back.svg()
                ),
                 const SizedBox(width: 20,),
                  CommonText(
                  text: state.step == 0 ? "Choose Your Interest" : state.step == 1 ? "Tell Us About Yourself": state.step == 2 ? "When is Your Birthday?" : "Fill Your Profile",
                  fontWeight: AppFontWeight.bold,
                  fontSize: AppFontSize.h4,
                               ),
              ],
            ),
            const SizedBox(height: 20,),


            if(state.step == 0)...[
              interestWidget(state, ref),
            ]else if(state.step == 1)...[
              genderTab(state, ref),
            ]else if(state.step == 2)...[
              birthdayWidget(state, context,ref),
            ]else...[
              setProfile(state, ref)
            ],




            const SizedBox(height: 20,),

            Row(
              children: [
                Expanded(
                  child: CommonFilledButton(
                    buttonColor: AppColors.primaryColor.withOpacity(0.4),
                    onPressed: () {
                      ref.read(profileNotifierProvider.notifier).changeIndex(validate: false);
                    },
                    buttonTextColor: AppColors.primaryColor,
                    buttonText: "Skip",
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: CommonFilledButton(
                    onPressed: () {
                    ref.read(profileNotifierProvider.notifier).changeIndex(validate: true);
                    },
                    buttonText: "Continue",
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }

  Widget setProfile(ProfileState state, WidgetRef ref) {
    return Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: state.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20,),
                      Center(
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [

                            CommonProfileAvatar.commonProfileAvatar(
                                sizedBoxHeight: 150,
                                placeholderString: state.profile,
                                onTapProfile: () {},
                                profileRadius: 60,
                                showBorder: false,
                                imageUrl:state.userModel?.profilePhoto ?? ""
                            ),
                            Positioned(
                              bottom: 8,
                              right: 8,
                              child: InkWell(
                                onTap: (){
                                  CommonMethods.pickImageBottomSheet(
                                    titleName: "Chose image",
                                    callback: (imageSource) {
                                      ref.read(profileNotifierProvider.notifier).choseImage(
                                          pickImageType: imageSource == 0 ? PickImageType.camera : PickImageType.gallery
                                      );
                                    },
                                  );
                                },
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                child: Assets.image.svg.edit.svg(),
                              ),
                            )

                          ],
                        ),
                      ),

                      const SizedBox(height: 20,),

                      IgnorePointer(
                        ignoring: true,
                        child: CommonTextField(
                          textEditingController:state.emailCon,
                          filledColor: AppColors.lightEmptyFilledColor,
                          prefixIcon: Assets.image.svg.message.path,
                          readOnly: true,
                        ),
                      ),
                      const SizedBox(height: 15,),
                      CommonTextField(
                        textEditingController:state.fullNameCon,
                        focusNode: FocusNode(),
                        filledColor: AppColors.lightEmptyFilledColor,
                        hintText: "Full name",
                        prefixIcon: Assets.image.svg.message.path,
                      ),
                      const SizedBox(height: 15,),
                      CommonTextField(
                        textEditingController:state.userNameCon,
                        focusNode: FocusNode(),
                        filledColor: AppColors.lightEmptyFilledColor,
                        hintText: "User name",
                        errorMessage: "Please enter user name",
                        validationMessage: "Please enter valid name",
                        prefixIcon: Assets.image.svg.message.path,
                      ),

                      const SizedBox(height: 15,),

                      CommonTextField(
                        textEditingController:state.addressCon,
                        focusNode: FocusNode(),
                        filledColor: AppColors.lightEmptyFilledColor,
                        hintText: "Address",
                        prefixIcon: Assets.image.svg.message.path,
                      ),

                      const SizedBox(height: 15,),
                    ],
                  ),
                ),
              ),
            );
  }

  Widget birthdayWidget(ProfileState state, BuildContext context,WidgetRef ref) {
    return Expanded(
            child: Column(
              children: [
                const CommonText(
                  text: "Your birthday will not be shown to the public.",
                  fontWeight: AppFontWeight.medium,
                  fontSize: AppFontSize.h6,
                ),
                const SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Center(child: Assets.image.svg.cack.svg()),
                ),
                CommonTextField(
                  textEditingController: state.dateCon,
                  readOnly: true,
                  filledColor: AppColors.lightEmptyFilledColor,
                  hintText: "Chose your birthday",
                  suffixIcon: Assets.image.svg.celender.path,
                ),

                Expanded(
                  child: LinearDatePicker(
                    startDate: "1990/01/01", //yyyy/mm/dd
                    endDate: DateFormat('yyyy/MM/dd').format(DateTime.now()),
                    initialDate: DateFormat('yyyy/MM/dd').format(DateTime.now()),
                    addLeadingZero: true,
                    showMonthName:true,
                    dateChangeListener: (date) {
                      ref.read(profileNotifierProvider.notifier).onDateChange(date);
                    },
                    columnWidth: MediaQuery.sizeOf(context).width/4,
                  ),
                ),
              ],
            ),
          );
  }

  Widget genderTab(ProfileState state, WidgetRef ref) {
    return Expanded(
            child: Column(
              children: [
                const CommonText(
                  text: "Choose your identity & help us to find accurate content for you.",
                  fontWeight: AppFontWeight.medium,
                  fontSize: AppFontSize.h6,
                ),

                const SizedBox(height: 20,),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        genderButton(state,ref,Gender.Male),
                        const SizedBox(height: 20,),
                        genderButton(state,ref,Gender.Female),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }

  Widget genderButton(ProfileState state,WidgetRef ref, Gender gender , ) {
    return InkWell(
                onTap: (){
                  ref.read(profileNotifierProvider.notifier).changeGender(gender);
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                height: 180,
                width: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: state.gender == gender ? AppColors.primaryColor : AppColors.greyColor
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.image.svg.male.svg(),
                      const SizedBox(height: 10,),
                       CommonText(
                        text: gender.name,
                        color: AppColors.whiteColor,
                        fontWeight: AppFontWeight.bold,
                        fontSize: AppFontSize.h6,
                      )
                    ],
                  ),
                ),
              );
  }

  Widget interestWidget(ProfileState state, WidgetRef ref) {
    return Expanded(
      child: Column(
        children: [
          const CommonText(
            text: "Choose your interests and get the best video recommendations.",
            fontWeight: AppFontWeight.medium,
            fontSize: AppFontSize.h6,
          ),

          const SizedBox(height: 20,),
          Expanded(
                  child: Skeletonizer(
                    enabled: state.loadStatus == LoadStatus.loading,
                    child: Wrap(
                      children: List.generate(state.interestList.length,
                              (i){
                                 return InkWell(
                                   onTap: (){
                                     ref.read(profileNotifierProvider.notifier).onChipSelect(i: i);
                                   },
                                   splashColor: Colors.transparent,
                                   highlightColor: Colors.transparent,
                                   child: Container(
                                     padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                     margin: const EdgeInsets.only(top: 5,bottom: 5,right:10 ),
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(40),
                                         border: Border.all(
                                             color: (state.interestList[i].isSelected?? false) ? Colors.transparent : AppColors.primaryColor
                                         ),
                                         color: (state.interestList[i].isSelected?? false) ? AppColors.primaryColor : Colors.transparent
                                     ),
                                     child: CommonText(
                                       text: state.interestList[i].title,
                                       fontWeight: AppFontWeight.bold,
                                       color: (state.interestList[i].isSelected?? false) ? AppColors.whiteColor :  AppColors.primaryColor,
                                       fontSize: AppFontSize.font_16,
                                     ),
                                   ),
                                 );
                              },
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
