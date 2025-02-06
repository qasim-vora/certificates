
import 'package:flutter/cupertino.dart';
import 'package:social_app/src/domain/model/comment/comment_model.dart';
import 'package:social_app/src/domain/model/interest_model/interest_model.dart';
import 'package:social_app/src/domain/model/saved_post/saved_post.dart';

import '../src/domain/model/user_model/user_model.dart';

class AppConstants {

  static GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();

  static UserModel? userModel;
  static SavedPostModel? savedPostModel;
  static String firebaseToken = "1234";

  static UserModel dummyUserModel = UserModel(
      userId: "userId",
      email: "email", password: "password",
      gender: "gender",
      fullName: "fullName",
      nickName: "nickName",
      address: "address",
      profilePhoto: "",
      birthDate: DateTime(1,1,20),
      followers: 0,
      following: 0,
      intrest: [],
      updatedAt: DateTime(1,1,20),
      username: "username",
      profileSet: false, 
    likeCount: 0, postCount: 0, pushToken: '',
  );

  static List<InterestModel> dummyInterestData = List<InterestModel>.generate(8,(i) => const InterestModel(
      title: "title      ",
       interestId: ''));

  static List<CommentModel> dummyCommentsData = List<CommentModel>.generate(8,(i) =>  CommentModel(
      commentId: "", comment: "comment", postId: "",
      auther: dummyUserModel,
      createdAt: DateTime(1,1,20),
      updatedAt: DateTime(1,1,20)
  ),);

}
