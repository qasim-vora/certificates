
class ApiConstants{
  //http://localhost:3000/share-news?id=23
  static const String basURL = 'http://192.168.5.128:8000';

  static const String login = '/loginUser';
  static const String createUser = '/createUser';
  static const String getAllInterest = '/getAllIntrest';
  static const String updateUser = '/api/updateUser';
  static const String addPost = '/api/createPost';
  static const String getAllPost = '/api/getAllPost';
  static const String getAllComments = '/api/getAllComments';
  static const String addComment = '/api/addComment';
  static const String likePost = '/api/likePost';
  static const String savePost = '/api/savePost';
  static const String getUserSavedPosts = '/api/getUserSavedPosts';
  static const String getUserLikesPosts = '/api/getUserLikesPosts';
  static const String getPostFromUserId = '/api/getPostFromUserId';
  static const String getUserPostsByType = '/api/getUserPostsByType';
  static const String getSingleUser = '/api/getSingleUser';
  static const String updatePushNotificationToken = '/api/updatePushNotificationToken';

}