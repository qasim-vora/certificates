
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/constants/app_constants.dart';
import 'package:social_app/di/app_providers.dart';
import 'package:social_app/src/data/repository/remote/remote_repository.dart';
import 'package:social_app/src/data/repository/remote/socket_repository.dart';
import 'package:social_app/src/domain/model/post_model/post_model.dart';
import 'package:social_app/src/presentation/notifier/home/state/home_state.dart';

part 'home_notifier.g.dart';
@riverpod
class HomeNotifier extends _$HomeNotifier {

  RemoteRepository? remoteRepository;
  SocketService? socketService;

  @override
  HomeState build() {
    remoteRepository = ref.read(remoteRepositoryProvider);
    socketService = ref.read(socketServiceProvider);

    state = HomeState();
    getAllPost();

    updateToken();
     return state;
  }

  void getAllPost() async {

    var res = await remoteRepository?.getPostHomeScreen();

    if(res!.success){
      List<PostModel> list =
      (res.jsonData as List).map((i) => PostModel.fromJson(i)).toList();
        state = state.copyWith(lists: list);
    }

    socketService?.setListeners(
       onNewPostCreated: (post){
         List<PostModel> posts = state.lists.toList();
           posts.insert(0,post);

         state = state.copyWith(lists: posts);
       }
    );
  }

  void updateToken() {
    remoteRepository?.updatePushNotificationToken(token: AppConstants.firebaseToken);
  }


}