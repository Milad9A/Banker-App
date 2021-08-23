import 'package:banker/config/consts.dart';
import 'package:banker/config/helpers/interceptor.dart';
import 'package:banker/config/helpers/shared_prefs_helper.dart';
import 'package:banker/config/services/api_result.dart';
import 'package:banker/config/services/dio_client.dart';
import 'package:banker/config/services/network_exceptions.dart';
import 'package:banker/models/user_model/user_login_model.dart';
import 'package:banker/models/user_model/user_model.dart';
import 'package:banker/models/user_model/user_sign_up_model.dart';
import 'package:dio/dio.dart';

class UserRepository {
  late DioClient dioClient;
  String _baseUrl = Consts.baseUrl;

  UserRepository() {
    var dio = Dio();
    dioClient = DioClient(
      _baseUrl,
      dio,
      interceptors: [
        AuthenticationInterceptor(),
      ],
    );
  }

  Future<ApiResult<User>> loginUser({
    required UserLogin userLoginCredentials,
  }) async {
    try {
      final response = await dioClient.post(
        '/users/login',
        data: userLoginCredentials,
      );

      User user = User.fromJson(response['user']);
      SharedPrefsHelper prefs = SharedPrefsHelper();
      prefs.persistToken(response['token']);

      return ApiResult.success(data: user);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult> logOutUser() async {
    try {
      final response = await dioClient.post(
        '/users/logout',
      );

      return ApiResult.success(data: response);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<User>> getUserInfo() async {
    try {
      final response = await dioClient.get(
        '/users/me',
      );

      User user = User.fromJson(response);

      return ApiResult.success(data: user);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<User>> signUpUser({
    required UserSignUp userSignUpCredentials,
  }) async {
    try {
      final response = await dioClient.post(
        '/users',
        data: userSignUpCredentials,
      );

      User user = User.fromJson(response['user']);

      SharedPrefsHelper prefs = SharedPrefsHelper();
      prefs.persistToken(response['token']);

      return ApiResult.success(data: user);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
