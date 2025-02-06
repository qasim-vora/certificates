import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_app/constants/app_constants.dart';
import 'package:social_app/constants/storage_constants.dart';
import 'package:social_app/di/app_providers.dart';
import 'package:social_app/router/navigation_methods.dart';

import '../../utils/common_methods.dart';
import '../../utils/logger_util.dart';


class ApiInterceptors extends InterceptorsWrapper {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (!await CommonMethods.checkConnectivity()) {
      final customResponse = {
        'success': false,
        'message': 'No internet connection.',
      };
      return handler.resolve(
        Response(
          requestOptions: options,
          data: customResponse,
          statusCode: 200,
        ),
      );
    }

    final method = options.method;
    final uri = options.uri;
    final data = options.data;

    ProviderContainer ref = ProviderContainer();

    String? token = await ref.read(localRepositoryProvider).getData(StorageConstants.token);
    // String? lang = await LocalDataSource.getData(LocalDataKeys.keyLanguageCode);
    //
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = token;
    }



   options.headers['Accept'] = 'application/json';

    if (method == 'GET') {
      logger.log(
        '✈️ REQUEST[$method] => PATH: $uri \n Token: ${options.headers}',
        printFullText: true,
      );
    } else {
      try {
        logger.log(
          '✈️ REQUEST[$method] => PATH: $uri \n Token:${options.headers} \n DATA: ${jsonEncode(data)}',
          printFullText: true,
        );
      } catch (e) {
        logger.log(
          '✈️ REQUEST[$method] => PATH: $uri \n Token: ${options.headers} \n DATA: ${data.files.toString()}',
          printFullText: true,
        );
      }
    }
    super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    final statusCode = response.statusCode;
    final uri = response.requestOptions.uri;
    final data = jsonEncode(response.data);

    logger.log(
      '✅ RESPONSE[$statusCode] => PATH: $uri\n DATA: $data',
      printFullText: true,
    );

      super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final statusCode = err.response?.statusCode!;
    final uri = err.requestOptions.path;
    var data = '';


    if (statusCode == 401) {
      logger.i('CALLED onError');
      ProviderContainer().read(localRepositoryProvider)..clearLoginData()..clearData();
      AppConstants.globalKey.currentContext!.popAllAndPush(Routes.login);
      return handler.resolve(
        Response(
          data: {
            'success': false,
            'message': 'login expired',
          },
          statusCode: 401,
          requestOptions: err.requestOptions,
        ),
      );
    }

     // if(err.requestOptions.connectTimeout!.inSeconds == 5){
     //   return handler.resolve(
     //     Response(
     //       data: {
     //         'success': false,
     //         'message': 'Request time out please your internet connection and try later',
     //       },
     //       statusCode: 408,
     //       requestOptions: err.requestOptions,
     //     ),
     //   );
     // }

    logger.log(
      '⚠️ ERROR[$statusCode] => PATH: $uri\n DATA: $data',
      printFullText: true,
    );

    super.onError(err, handler);
  }
}
