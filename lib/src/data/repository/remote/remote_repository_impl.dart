import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:social_app/services/api_service/api_response.dart';
import 'package:social_app/services/api_service/api_service.dart';
import 'package:social_app/services/api_service/failure_response.dart';
import 'package:social_app/src/data/repository/remote/remote_repository.dart';

import '../../../presentation/notifier/profile/profile_notifier.dart';

class RemoteRepositoryImpl extends RemoteRepository{
  final ApiServices apiServices;

  RemoteRepositoryImpl({required this.apiServices});

  @override
  Future<ApiResponse> login({required String email, required String password}) async{

     return await apiServices.login(jsonBody: {
       "email":email.trim(),
       "password":password.trim()
     },
     );
  }

  @override
  Future<ApiResponse> signUp({required String email, required String password})  async{
    return await apiServices.signUp( jsonBody: {
      "email":email,
      "password": password
    },
    );
  }

  @override
  Future<ApiResponse> getAllInterest()async {
    return await apiServices.getAllInterest();
  }

  @override
  Future<ApiResponse> updateProfile(
      {
        required FormData formData,
        required String userId,
      }) async{
    return await apiServices.completeProfile(formData: formData,id: userId);
  }

  @override
  Future<ApiResponse> addPost({required FormData formData}) async {
    return await apiServices.addPost(formData: formData,);
  }

  @override
  Future<ApiResponse> getPostHomeScreen() async{
    return await apiServices.getAllPost();
  }

  @override
  Future<ApiResponse> addComments({required Map<String, dynamic> body}) async{
    return await apiServices.addComment(jsonBody: body);
  }

  @override
  Future<ApiResponse> getAllComments({ required String postId}) async{
    return await apiServices.getAllComments(postId: postId);
  }

  @override
  Future<ApiResponse> likePost({required String postId,required Map<String, dynamic> body}) async{
    return await apiServices.likePost(postId: postId,jsonBody: body);
  }

  @override
  Future<ApiResponse> savePost({required Map<String, dynamic> body}) async{
    return await apiServices.savePost(jsonBody: body);
  }

  @override
  Future<ApiResponse> getUserSavedPosts({required String userId}) async{
    return await apiServices.getUserSavedPosts(userId: userId);
  }

  @override
  Future<ApiResponse> getUserPostsByType({required String userId,required String type}) async{
    return await apiServices.getUserPostsByType(userId: userId,type: type);
  }


  @override
  Future<ApiResponse> getUserLikesPosts({required String userId}) async{
    return await apiServices.getUserLikesPosts(userId: userId);
  }

  @override
  Future<ApiResponse> getSingleUser({required String userId}) async{
    return await apiServices.getSingleUser(userId: userId);
  }

  @override
  Future<ApiResponse> updatePushNotificationToken({required String token})  async{
    return await apiServices.updatePushNotificationToken(token: token);
  }


}