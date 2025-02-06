import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/di/app_providers.dart';
import 'package:social_app/enums/loading_status.dart';
import 'package:social_app/src/data/repository/local/local_repository.dart';
import 'package:social_app/src/data/repository/remote/remote_repository.dart';
import 'package:social_app/src/domain/model/comment/comment_model.dart';
import 'package:social_app/src/domain/model/post_model/post_model.dart';
import 'package:social_app/src/domain/model/saved_post/saved_post.dart';
import 'package:social_app/src/domain/model/user_model/user_model.dart';
import 'package:social_app/widget/post_widget/notifier/state/post_widget_state.dart';

import '../../../constants/app_constants.dart';
import '../../../utils/snackbar_widget.dart';

part 'post_widget_notifier.g.dart';


@Riverpod(keepAlive: false)
class PostWidgetNotifier extends _$PostWidgetNotifier {
  RemoteRepository? remoteRepository;
  LocalRepository? localRepository;


  @override
  PostWidgetState build([PostModel? postModel]){
    init();
     return state;
  }


  addComments() async{
    UserModel? userModel = await localRepository?.getSession();
     var res = await remoteRepository?.addComments(
         body: {
           "postId": state.postModel!.postId,
           "comment": state.commentCon?.text.trim(),
           "postUser": state.postModel!.auther.userId,
           "auther": userModel?.userId
         },
     );
    state = state.copyWith(commentCon: TextEditingController());


    if(res!.success){
      List<CommentModel> comments = state.comments.toList();
      comments.insert(0, CommentModel.fromJson(res.jsonData));
      state = state.copyWith(comments:  comments);
     }else{
       showToast(AppConstants.globalKey.currentContext!,res.message,success: false);
     }


  }

  void init() async{
    remoteRepository = ref.read(remoteRepositoryProvider);
    localRepository = ref.read(localRepositoryProvider);
    //UserModel? userModel = await localRepository?.getSession();

    state = PostWidgetState(
        commentCon: TextEditingController(),
        postModel: postModel,
         savedPostModel: AppConstants.savedPostModel,
        commentFocus: FocusNode()

    );

    state.commentFocus?.addListener(
          (){
        if(state.commentFocus!.hasFocus){
          state = state.copyWith(sheetHeight: 200);
        }else{
          state = state.copyWith(sheetHeight: 400);
        }
      },
    );

  }

  void getAllComments() async{

    state = state.copyWith(status: LoadStatus.loading,comments: AppConstants.dummyCommentsData);

    var res = await remoteRepository?.getAllComments(postId: state.postModel!.postId);

    if(res!.success){
      List<CommentModel> list =
      (res.jsonData as List).map((i) => CommentModel.fromJson(i)).toList();
      state = state.copyWith(comments: list,status: LoadStatus.success);
    }else{
      state = state.copyWith(status: LoadStatus.failure);
      showToast(AppConstants.globalKey.currentContext!,res.message,success: false);
    }

  }

  void likePost() async {
    UserModel? userModel = await localRepository?.getSession();
    var res = await remoteRepository?.likePost(postId: state.postModel!.postId, body: {
      "userId": userModel!.userId
    },);

    if(res!.success){
       state = state.copyWith(postModel: PostModel.fromJson(res.jsonData));
    }else{
      showToast(AppConstants.globalKey.currentContext!,res.message,success: false);
    }
  }

  bool checkLike() {

     return state.postModel?.likes.any((e)=>e.userId == state.userModel!.userId) ?? false ;
  }

  void calculateHeight(BoxConstraints constraints) {
    double keyboardHeight = MediaQuery.of(AppConstants.globalKey.currentContext!).viewInsets.bottom;


    double sheetHeight = constraints.minHeight - keyboardHeight;

    state = state.copyWith(sheetHeight: keyboardHeight!=0 ? 200 : 400 );

  }

  void savePost() async {
    var res = await remoteRepository?.savePost(body: {
      "userId":AppConstants.userModel!.userId,
      "postId": state.postModel!.postId
    },);

    if(res!.success){
      state = state.copyWith(savedPostModel: SavedPostModel.fromJson(res.jsonData));
      localRepository?.setUserSavedPost(SavedPostModel.fromJson(res.jsonData));
      AppConstants.savedPostModel = SavedPostModel.fromJson(res.jsonData);
    }else{
      showToast(AppConstants.globalKey.currentContext!,res.message,success: false);
    }
  }

}