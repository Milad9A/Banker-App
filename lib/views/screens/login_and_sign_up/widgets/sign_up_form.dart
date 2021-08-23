import 'package:banker/config/theme/color_repository.dart';
import 'package:banker/models/user_model/user_sign_up_model.dart';
import 'package:banker/providers/authentication/sign_up/sign_up_bloc.dart';
import 'package:banker/views/widgets/banker_text_button.dart';
import 'package:banker/views/widgets/banker_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm(
      {required this.usernameController,
      required this.emailController,
      required this.passwordController,
      required this.confirmPasswordController});

  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

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
          'Create New Account',
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 46.0),
        BankerTextField(
          controller: usernameController,
          hintText: 'Username',
          textInputAction: TextInputAction.next,
          textInputType: TextInputType.name,
          onChanged: (value) {},
        ),
        SizedBox(height: 26.0),
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
          textInputAction: TextInputAction.next,
          textInputType: TextInputType.text,
          obscureText: true,
          onChanged: (value) {},
        ),
        SizedBox(height: 26.0),
        BankerTextField(
          controller: confirmPasswordController,
          hintText: 'Confirm Password',
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.text,
          obscureText: true,
          onChanged: (value) {},
        ),
        SizedBox(height: 26.0),
        BankerTextButton(
          text: 'Create Account',
          onPressed: () {
            BlocProvider.of<SignUpBloc>(context).add(
              SignUpButtonPressed(
                userSignUp: UserSignUp(
                  name: usernameController.text,
                  email: emailController.text,
                  password: passwordController.text,
                  confirmPassword: confirmPasswordController.text,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
