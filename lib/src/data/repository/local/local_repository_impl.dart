
import 'package:hive/hive.dart';
import 'package:social_app/src/domain/model/saved_post/saved_post.dart';
import 'package:social_app/src/domain/model/user_model/user_model.dart';

import '../../../../constants/storage_constants.dart';
import 'local_repository.dart';

class LocalRepositoryImpl extends LocalRepository {
  @override
  Future setData(String key, value) async {
    var box = Hive.box(StorageConstants.boxName);
    box.put(key, value);
  }

  @override
  Future getData(String key) async {
    var box = Hive.box(StorageConstants.boxName);

    return box.get(key);
  }

  @override
  Future clearSpecificKey(String key) async {
    var box = Hive.box(StorageConstants.boxName);
    return box.delete(key);
  }

  @override
  void clearData() {
    var box = Hive.box(StorageConstants.boxName);
    box.clear();
  }

  @override
  Future clearLoginData() async{
    var box = Hive.box(StorageConstants.boxName);
    box.clear();
  }

  @override
  Future<bool> isSaved(int id) {
    // TODO: implement isSaved
    throw UnimplementedError();
  }

  @override
  Future setSession(UserModel user) async{
    Box<UserModel>  obj = await Hive.openBox<UserModel>(StorageConstants.userSession);
    await obj.add(user);
  }

  // @override
  // Future setNewsFav(News newsModel) async{
  //   Box<News>  data = await Hive.openBox<News>(StorageConstants.favorite);
  //
  //   List<News> news = data.values.toList();
  //   int index = news.indexWhere((News e)=> e.id == newsModel.id);
  //
  //   if(news.isEmpty || index == -1){
  //     data.add(newsModel);
  //   }else{
  //     data.deleteAt(index);
  //   }
  //
  // }
  //
  @override
  Future<UserModel?> getSession() async{
    Box<UserModel>  data = await Hive.openBox<UserModel>(StorageConstants.userSession);
    return data.values.firstOrNull;
  }

  @override
  Future<SavedPostModel?> getUserSavedPost() async{
    Box<SavedPostModel>  data = await Hive.openBox<SavedPostModel>(StorageConstants.savedPost);
    return data.values.firstOrNull;
  }

  @override
  Future setUserSavedPost(SavedPostModel user) async{
    Box<SavedPostModel>  obj = await Hive.openBox<SavedPostModel>(StorageConstants.savedPost);
    await obj.add(user);
  }
  //
  // @override
  // Future<bool> isSaved(int id) async{
  //   Box<News>  data = await Hive.openBox<News>(StorageConstants.favorite);
  //
  //   if(data.values.isEmpty || (data.values.toList().indexWhere((News e)=> e.id == id)) == -1){
  //     return false;
  //   }else{
  //     return true;
  //   }
  // }
}
