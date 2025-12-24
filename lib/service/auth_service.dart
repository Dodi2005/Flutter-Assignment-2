import 'package:dio/dio.dart';
import 'package:flutter_application_1/data/login_response_model.dart';
import 'package:flutter_application_1/network/api_constants.dart';
import 'package:flutter_application_1/service/api_result.dart';
import 'package:flutter_application_1/service/app_exception.dart';

class AuthService 
{
  final Dio _dio;
  AuthService(this._dio);
  Future<ApiResult> login(String username, String password) async {
  try
  {
    Response response = await _dio.post(
      ApiConstants.loginEndPoint,
      data: {'username': username, 'password': password},
    );
    if(response.statusCode == 200)
    {
      Map<String, dynamic> data = response.data;
      LoginResponseModel model = LoginResponseModel.fromJson(data);
      return Success(model);
    }
    else
    {
      return Failure(
        AppException(
          errorMessage: response.statusMessage ?? 'Unable to login',
          errorCode: response.statusCode,
        ),
      );
    }
  }
  on DioException catch(e)
  {
    return Failure(AppException.fromDioError(e));
  }
  catch(e)
  {
    return Failure(AppException(errorMessage: e.toString()));
  }

  }
}