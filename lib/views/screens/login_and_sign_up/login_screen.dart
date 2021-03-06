import 'package:banker/config/functions/show_pop_up.dart';
import 'package:banker/config/services/network_exceptions.dart';
import 'package:banker/config/theme/color_repository.dart';
import 'package:banker/models/user_model/user_model.dart';
import 'package:banker/providers/authentication/authentication/authentication_bloc.dart';
import 'package:banker/providers/authentication/login/login_bloc.dart';
import 'package:banker/repositories/user_repository.dart';
import 'package:banker/views/screens/home/home_screen.dart';
import 'package:banker/views/widgets/banker_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

import 'widgets/login_form.dart';
import 'widgets/terms_and_policy_text.dart';

class LoginScreen extends StatefulWidget {
  static Route get route =>
      MaterialPageRoute<void>(builder: (_) => LoginScreen());

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final UserRepository userRepository = UserRepository();

  @override
  void dispose() {
    Loader.hide();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(
        authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
        userRepository: userRepository,
      ),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {
              Loader.show(
                context,
                progressIndicator: BankerCircularProgressIndicator(),
              );
            },
            success: (User user) {
              Loader.hide();
              showPopUp(
                context,
                title: 'Success',
                content: 'You have been logged In as ${user.name}',
                onPressed: () {
                  Navigator.pushReplacement(context, HomeScreen.route);
                },
              );
            },
            error: (NetworkExceptions error) {
              Loader.hide();
              showPopUp(
                context,
                title: 'Error',
                content: NetworkExceptions.getErrorMessage(error),
                onPressed: () {
                  Navigator.pop(context);
                },
              );
            },
          );
        },
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            leading: SizedBox.shrink(),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/shapes_header.png',
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 110.0, 24.0, 0.0),
                  child: LoginForm(
                    emailController: emailController,
                    passwordController: passwordController,
                  ),
                ),
                const TermsAndPolicyText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
