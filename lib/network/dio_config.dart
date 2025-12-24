import 'package:flutter_application_1/network/api_constants.dart';
import 'package:dio/dio.dart';

class DioConfig
{
  static const Duration timeout = Duration(seconds: 30);
  static Dio getDio()
  {
    Dio dio = Dio()..options.baseUrl=ApiConstants.baseUrl
    ..options.headers['Content-Type']=Headers.jsonContentType
    ..options.connectTimeout = timeout
    ..options.receiveTimeout = timeout
    ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    return dio;
  }
}