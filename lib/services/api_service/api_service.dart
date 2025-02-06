import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../constants/api_constants.dart';
import '../../src/presentation/notifier/profile/profile_notifier.dart';
import 'api_interceptor.dart';
import 'api_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.basURL)
abstract class ApiServices {

  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  // /// API Declaration
  // @GET('${ApiConstant.init}/{version}/{app_name}')
  // Future<ApiResponse> initApi({
  //   @Path('version') String? version,
  //   @Path('app_name') String? appName,
  // });
  //
  @POST(ApiConstants.login)
  Future<ApiResponse> login({
    @Body() Map<String, dynamic> jsonBody = const {},
  });

  @POST(ApiConstants.createUser)
  Future<ApiResponse> signUp({
    @Body() Map<String, dynamic> jsonBody = const {},
  });
  //
  @GET(ApiConstants.getAllInterest)
  Future<ApiResponse> getAllInterest();


  @MultiPart()
   @PUT('${ApiConstants.updateUser}/{id}')
  Future<ApiResponse> completeProfile({
    @Body() FormData? formData,
     @Path('id') String? id,
  });


  @MultiPart()
  @POST(ApiConstants.addPost)
  Future<ApiResponse> addPost({
    @Body() FormData? formData,
  });

  @GET(ApiConstants.getAllPost)
  Future<ApiResponse> getAllPost();


  @GET(ApiConstants.getAllComments)
  Future<ApiResponse> getAllComments({
    @Query("postId") String? postId,
  });

  @POST(ApiConstants.addComment)
  Future<ApiResponse> addComment({
    @Body() Map<String, dynamic> jsonBody = const {},
  });


  @POST('${ApiConstants.likePost}/{postId}')
  Future<ApiResponse> likePost({
    @Body() Map<String, dynamic> jsonBody = const {},
    @Path('postId') String? postId,
  });

  @POST(ApiConstants.savePost)
  Future<ApiResponse> savePost({
    @Body() Map<String, dynamic> jsonBody = const {},
  });


  @GET('${ApiConstants.getUserSavedPosts}/{userId}')
  Future<ApiResponse> getUserSavedPosts({
    @Path('userId') String? userId,
  });

  @GET('${ApiConstants.getUserLikesPosts}/{userId}')
  Future<ApiResponse> getUserLikesPosts({
    @Path('userId') String? userId,
  });


  @GET('${ApiConstants.getUserPostsByType}/{userId}')
  Future<ApiResponse> getUserPostsByType({
    @Path('userId') String? userId,
    @Query("type")  String? type
  });

  @GET(ApiConstants.getSingleUser)
  Future<ApiResponse> getSingleUser({
    @Query("userId")  String? userId
  });

  @PUT(ApiConstants.updatePushNotificationToken)
  Future<ApiResponse> updatePushNotificationToken({
    @Query("token") String? token,
  });
  //
  // @POST(ApiConstant.sendEmailVerification)
  // Future<ApiResponse> sendEmailVerification({
  //   @Body() Map<String, dynamic> jsonBody = const {},
  // });
  //
  // @POST(ApiConstant.sendOtp)
  // Future<ApiResponse> sendOtp({
  //   @Body() Map<String, dynamic> jsonBody = const {},
  // });
  //
  // @POST(ApiConstant.verifyOtp)
  // Future<ApiResponse> verifyOtp({
  //   @Body() Map<String, dynamic> jsonBody = const {},
  // });
  //
  // @POST(ApiConstant.register)
  // Future<ApiResponse> register({
  //   @Body() Map<String, dynamic> jsonBody = const {},
  // });
  //
  // @GET(ApiConstant.logout)
  // Future<ApiResponse> logout();
  //
  // @POST(ApiConstant.forgotPassword)
  // Future<ApiResponse> forgotPassword({
  //   @Body() Map<String, dynamic> jsonBody = const {},
  // });
  //
  // @GET(ApiConstant.getWorkProfile)
  // Future<ApiResponse> getWorkProfile();
  //
  // @POST(ApiConstant.addWorkProfile)
  // Future<ApiResponse> addWorkProfile({
  //   @Body() Map<String, dynamic> jsonBody = const {},
  // });
  //
  // @POST(ApiConstant.deleteWorkProfile)
  // Future<ApiResponse> deleteWorkProfile();
  //
  // @GET(ApiConstant.reasons)
  // Future<ApiResponse> getReasons();
  //
  // // get address history
  // @GET(ApiConstant.getAddressHistory)
  // Future<ApiResponse> getAddressHistory();
  //
  // // save address history
  // @POST(ApiConstant.saveAddressHistory)
  // Future<ApiResponse> saveAddressHistory({
  //   @Body() Map<String, dynamic> jsonBody = const {},
  // });
  //
  // @GET(ApiConstant.promoCodes)
  // Future<ApiResponse> getPromoCodes();
  //
  // @POST(ApiConstant.applyPromoCode)
  // Future<ApiResponse> applyPromoCode({
  //   @Body() Map<String, dynamic> jsonBody = const {},
  // });
  //

  //
  // @POST(ApiConstant.updateProfile)
  // Future<ApiResponse> updateProfile({
  //   @Body() Map<String, dynamic> jsonBody = const {},
  // });
  //
  // @GET(ApiConstant.myRides)
  // Future<ApiResponse> myRides(@Queries() Map<String, dynamic> queries);
  //
  // @POST(ApiConstant.vehicleDetail)
  // Future<ApiResponse> getVehicleDetail(
  //   @Body() Map<String, dynamic> jsonBody,
  // );
  //
  // @POST(ApiConstant.giveReviewRating)
  // Future<ApiResponse> giveReviewRating(@Body() Map<String, dynamic> jsonBody,);
  //
  // @POST(ApiConstant.cancelRide)
  // Future<ApiResponse> cancelRide(@Body() Map<String, dynamic> jsonBody,);
}
