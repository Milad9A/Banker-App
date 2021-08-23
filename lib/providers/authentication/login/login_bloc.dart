import 'dart:async';

import 'package:banker/config/services/api_result.dart';
import 'package:banker/config/services/network_exceptions.dart';
import 'package:banker/models/user_model/user_login_model.dart';
import 'package:banker/models/user_model/user_model.dart';
import 'package:banker/providers/authentication/authentication/authentication_bloc.dart';
import 'package:banker/repositories/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required this.authenticationBloc,
    required this.userRepository,
  }) : super(_Initial());

  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginButtonPressed) {
      yield LoginLoading();

      ApiResult<User> apiResult = await userRepository.loginUser(
        userLoginCredentials: event.userLogin,
      );

      apiResult.when(
        success: (User data) {
          authenticationBloc.add(AuthenticationLoggedIn(user: data));
          emit(LoginSuccess(user: data));
        },
        failure: (NetworkExceptions error) {
          emit(LoginError(error: error));
        },
      );
    }
  }
}
