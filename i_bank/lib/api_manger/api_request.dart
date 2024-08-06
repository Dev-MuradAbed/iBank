import 'dart:developer' as developer;

import 'package:dio/dio.dart';

import '../../controllers/index.dart';
import '../utils/index.dart';

class ApiRequest {
  ApiRequest({
    required this.path,
    this.data,
    this.method,
    this.withLoading = true,
    this.withErrorMessage = true,
  });
  final String path;
  dynamic data;
  String? method;
  dynamic response;
  bool withLoading;
  bool withErrorMessage;

  final AppLanguageController _appLanguageController =
      Get.find<AppLanguageController>();
  final MyAppController _myAppController = Get.find<MyAppController>();

  Dio _dio() {
    // Put your authorization token here
    return Dio(
      BaseOptions(
        headers: <String, dynamic>{
          'Authorization': _myAppController.userData != null
              ? 'Bearer ${_myAppController.userData['token']}'
              : '',
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Accept-Language': _appLanguageController.appLocale,
          'platform': 'mobile',
        },
      ),
    );
  }

  Future<void> request({
    Function()? beforeSend,
    Function(dynamic data, dynamic response)? onSuccess,
    Function(dynamic error)? onError,
  }) async {
    // start request time
    final DateTime startTime = DateTime.now();

    try {
      // show  request details in debug console
      showRequestDetails(
        method: method,
        path: path,
        body: data.toString(),
      );
      // start spinner loading
      if (withLoading) {
        startLoading();
      }
      // check method type
      switch (method) {
        case getMethod:
          response = await _dio().get(baseUrl + path, queryParameters: data);

          break;
        case postMethod:
          response = await _dio().post(baseUrl + path, data: data);
          break;
        case putMethod:
          response = await _dio().put(baseUrl + path, data: data);
          break;
        case deleteMethod:
          response = await _dio().delete(baseUrl + path, data: data);
          break;
      }
      // request time
      final int time = DateTime.now().difference(startTime).inMilliseconds;
      // print response data in console
      printSuccessesResponse(response: response.data, time: time);
      if (withLoading) {
        dismissLoading();
      }
      if (onSuccess != null) {
        onSuccess(response.data['data'], response.data);
      }
    } catch (error) {
      // request time
      final int time = DateTime.now().difference(startTime).inMilliseconds;
      dynamic errorResponse;
      if (error is DioError) {
        errorResponse = error.response;
        // In case we get a null response for unknown reason
        final dynamic errorData = errorResponse != null
            ? errorResponse.data
            : <dynamic, dynamic>{
                'errors': <dynamic>[
                  <dynamic, dynamic>{'message': 'Un handled Error'}
                ]
              };
        //handle DioError here by error type or by error code
        if (withErrorMessage) {
          showMessage(
            description:
                errorData['errors'] != null && errorData['errors'].length > 0
                    ? errorData['errors'][0]['message']
                    : errorData['message'],
            textColor: 0xFFD32F2F,
          );
        }
        // print response error
        printRequestError(error: errorData, time: time);

        if (onError != null) {
          onError(errorData);
        }
      } else {
        // handle another errors
        developer.log('\x1B[31m **** Request catch another error ****');
        developer.log('\x1B[33m Error>> $error');
        developer.log('\x1B[31m ***************************');
      }
    } finally {
      if (withLoading) {
        dismissLoading();
      }
    }
  }
}
