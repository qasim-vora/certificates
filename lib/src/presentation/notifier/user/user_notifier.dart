
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/constants/app_constants.dart';
import 'package:social_app/di/app_providers.dart';
import 'package:social_app/enums/loading_status.dart';
import 'package:social_app/enums/menu_type.dart';
import 'package:social_app/src/data/repository/remote/remote_repository.dart';
import 'package:social_app/src/domain/model/post_model/post_model.dart';
import 'package:social_app/src/domain/model/user_model/user_model.dart';
import 'package:social_app/src/presentation/notifier/user/state/user_state.dart';

import '../../../../utils/snackbar_widget.dart';

part 'user_notifier.g.dart';

@riverpod
class UserNotifier extends _$UserNotifier {
  RemoteRepository? remoteRepository;


  @override
  UserState build(String user) {
    remoteRepository = ref.read(remoteRepositoryProvider);
     state = UserState();
    getUserData(userID: user);
    onTabChange(type: MenuType.post);
     return state;
  }

  void getUserData({required String userID}) async {

    state = state.copyWith(status: LoadStatus.loading,user: AppConstants.dummyUserModel);

    var res = await remoteRepository!.getSingleUser(userId: userID);

    if(res.success){
      UserModel userModel = UserModel.fromJson(res.jsonData);
      state = state.copyWith(status: LoadStatus.success,user: userModel);
    }else{
      state = state.copyWith(status: LoadStatus.failure,);
    }

  }

  void onTabChange({required MenuType type})async{

    var response = await remoteRepository?.getUserPostsByType(
        userId: AppConstants.userModel!.userId,
        type: type.name
    );

    if(response!.success){

      List<PostModel> list =
      (response.jsonData as List).map((i) => PostModel.fromJson(i)).toList();

      state = state.copyWith(type: type,post: list);
    }else{
      showToast(AppConstants.globalKey.currentContext!,response.message,success: false);
    }
  }
}