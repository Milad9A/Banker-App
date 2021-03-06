import 'package:banker/config/functions/show_pop_up.dart';
import 'package:banker/config/services/network_exceptions.dart';
import 'package:banker/models/user_model/user_model.dart';
import 'package:banker/providers/authentication/authentication/authentication_bloc.dart';
import 'package:banker/providers/authentication/sign_up/sign_up_bloc.dart';
import 'package:banker/repositories/user_repository.dart';
import 'package:banker/views/screens/home/home_screen.dart';
import 'package:banker/views/widgets/banker_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

import 'widgets/sign_up_form.dart';
import 'widgets/terms_and_policy_text.dart';

class SignUpScreen extends StatefulWidget {
  static Route get route =>
      MaterialPageRoute<void>(builder: (_) => SignUpScreen());

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    Loader.hide();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc(
        userRepository: UserRepository(),
        authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: BlocListener<SignUpBloc, SignUpState>(
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
                  content: 'User Created Successfully',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      HomeScreen.route,
                    );
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/shapes_header.png',
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 80.0, 24.0, 0.0),
                  child: SignUpForm(
                    usernameController: usernameController,
                    emailController: emailController,
                    passwordController: passwordController,
                    confirmPasswordController: confirmPasswordController,
                  ),
                ),
                const TermsAndPolicyText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
