import 'package:flutter_application_1/service/app_exception.dart';

abstract class ApiResult <T>{}
class Success<T> extends ApiResult
{
    T? data; 
    Success([this.data]);
}
class Failure extends ApiResult
{
  AppException exception;
  Failure(this.exception);
}
