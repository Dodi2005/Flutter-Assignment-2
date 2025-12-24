import 'package:dio/dio.dart';

class AppException 
{
  final String errorMessage;
  final int? errorCode;
  AppException({required this.errorMessage, this.errorCode});

  static AppException fromDioError(DioException dioError)
  {
    switch(dioError.type)
    {
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
        return AppException(errorMessage: 'Timeout check connection');
      case DioExceptionType.badCertificate:
        return AppException(errorMessage: 'Certification error');
      case DioExceptionType.badResponse:
        return AppException(errorMessage: 'Server error');
      case DioExceptionType.cancel:
        return AppException(errorMessage: 'Request cancelled');
      case DioExceptionType.unknown:
        return AppException(errorMessage: dioError.response?.statusMessage?? 'Unable to login');
      default:
        return AppException(errorMessage: 'Something  is wrong');
    }
  }
}