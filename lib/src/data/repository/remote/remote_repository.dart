import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:social_app/services/api_service/api_response.dart';
import 'package:social_app/services/api_service/failure_response.dart';

import '../../../presentation/notifier/profile/profile_notifier.dart';

abstract class RemoteRepository{

  Future<ApiResponse> login({required String email, required String password});

  Future<ApiResponse> signUp({required String email, required String password});

  Future<ApiResponse> getAllInterest();


  Future<ApiResponse> updateProfile({
    required FormData formData,
     required String userId,
  });

  Future<ApiResponse> addPost({required FormData formData});


  Future<ApiResponse> getPostHomeScreen();

  Future<ApiResponse> getAllComments({ required  String postId});

  Future<ApiResponse> addComments({required Map<String,dynamic> body});

  Future<ApiResponse> likePost({required String postId,required Map<String,dynamic> body});

  Future<ApiResponse> savePost({required Map<String,dynamic> body});

  Future<ApiResponse> getUserSavedPosts({required String userId});

  Future<ApiResponse> getUserLikesPosts({required String userId});

  Future<ApiResponse> getUserPostsByType({required String userId,required String type});

  Future<ApiResponse> getSingleUser({required String userId});

  Future<ApiResponse> updatePushNotificationToken({required String token});



}