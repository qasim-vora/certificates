
import 'dart:io';

import 'package:permission_handler/permission_handler.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/constants/app_constants.dart';
import 'package:social_app/router/navigation_methods.dart';
import 'package:social_app/src/presentation/notifier/login/login_notifier.dart';
import 'package:social_app/src/presentation/notifier/media_notifier/state/media_state.dart';
import 'package:social_app/utils/loader_util/loading_dialog.dart';

part 'media_notifier.g.dart';



@riverpod
class MediaNotifier extends _$MediaNotifier {
  @override
  MediaState build(){
    state = MediaState();
    fetchMedia(state.requestType);
    return state;
  }


  void onSelect({required File file}){
    List<File> selected = state.selected.toList();
    if(selected.contains(file)){
      selected.remove(file);
    }else{
      selected.add(file);
    }
    state = state.copyWith(selected: selected);
  }

  void fetchMedia(RequestType type)async{

   await Permission.videos.request();


   ///ios
   await Permission.mediaLibrary.request();
   await Permission.storage.request();

   //  //AppConstants.globalKey.currentContext!.loading.show();

    List<AssetPathEntity> paths = await PhotoManager.getAssetPathList(
        hasAll: true,
        type: type
    );

    List<File> files = [];

    if (paths.isNotEmpty) {
      List<AssetEntity> media = await paths[0].getAssetListRange(
        start: 0,
        end: 20,
      );


      for (var action in media) {
        var data = await action.file;
         files.add(data!);
      }

      state = state.copyWith(media: files,requestType: type,selected: []);
    }
    //AppConstants.globalKey.currentContext!.loading.hide();
  }

  void changeTab(RequestType type) {
    fetchMedia(type);
  }

  void goToPost() {

    List<String> path = [];
    for (var action in state.selected) {
      path.add(action.path);
    }
    AppConstants.globalKey.currentContext!.pushNamed(Routes.postScreen,arguments: {"paths": path});
  }
}

