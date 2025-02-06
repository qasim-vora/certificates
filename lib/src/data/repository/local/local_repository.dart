
import 'package:social_app/src/domain/model/saved_post/saved_post.dart';
import 'package:social_app/src/domain/model/user_model/user_model.dart';

abstract class LocalRepository {

  Future<dynamic> setSession(UserModel user);

  Future<dynamic> setUserSavedPost(SavedPostModel user);

  Future<UserModel?> getSession();

  Future<SavedPostModel?> getUserSavedPost();

  Future<bool> isSaved(int id);

  Future<dynamic> setData(String key, dynamic value);

  Future<dynamic> getData(String key);

  void clearData();

  Future<dynamic> clearSpecificKey(String key);

  Future<dynamic> clearLoginData();
}
