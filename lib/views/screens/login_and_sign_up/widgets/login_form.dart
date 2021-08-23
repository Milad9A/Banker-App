import 'package:banker/config/theme/color_repository.dart';
import 'package:banker/models/user_model/user_login_model.dart';
import 'package:banker/providers/authentication/login/login_bloc.dart';
import 'package:banker/repositories/user_repository.dart';
import 'package:banker/views/widgets/banker_text_button.dart';
import 'package:banker/views/widgets/banker_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../sign_up_screen.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final UserRepository userRepository = UserRepository();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'BANKER',
          style: TextStyle(
            color: ColorRepository.darkBlue,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Login to continue',
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 46.0),
        BankerTextField(
          controller: emailController,
          hintText: 'Email',
          textInputAction: TextInputAction.next,
          textInputType: TextInputType.emailAddress,
          onChanged: (value) {},
        ),
        SizedBox(height: 26.0),
        BankerTextField(
          controller: passwordController,
          hintText: 'Password',
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.text,
          obscureText: true,
          onChanged: (value) {},
        ),
        SizedBox(height: 26.0),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            'Forgot Your Password?',
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: ColorRepository.greyish),
          ),
        ),
        SizedBox(height: 26.0),
        BankerTextButton(
          text: 'Login',
          onPressed: () {
            BlocProvider.of<LoginBloc>(context).add(
              LoginButtonPressed(
                userLogin: UserLogin(
                    email: emailController.text,
                    password: passwordController.text),
              ),
            );
          },
        ),
        SizedBox(height: 22.0),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "Don't Have An Account? ",
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: ColorRepository.greyish,
                ),
            children: [
              TextSpan(
                text: "Create One",
                style: TextStyle(color: ColorRepository.darkBlue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(context, SignUpScreen.route);
                  },
              )
            ],
          ),
        ),
      ],
    );
  }
}
