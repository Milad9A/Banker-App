import 'package:banker/config/theme/color_repository.dart';
import 'package:banker/providers/authentication/authentication/authentication_bloc.dart';
import 'package:banker/providers/payment/payment_bloc.dart';
import 'package:banker/views/screens/home/widgets/build_home_screen_app_bar.dart';
import 'package:banker/views/screens/home/widgets/build_home_screen_authenticated_body.dart';
import 'package:banker/views/screens/login_and_sign_up/login_screen.dart';
import 'package:banker/views/widgets/banker_circular_progress_indicator.dart';
import 'package:banker/views/widgets/banker_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  static Route get route =>
      MaterialPageRoute<void>(builder: (_) => HomeScreen());

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<PaymentBloc>(context).add(GetPayments());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeScreenAppBar(context),
      body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          return state.when(
            initial: () => Center(child: BankerCircularProgressIndicator()),
            loading: () => Center(child: BankerCircularProgressIndicator()),
            unAuthenticated: () => Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: BankerTextButton(
                  text: 'Login Screen',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
              ),
            ),
            authenticated: (user) => buildHomeScreenAuthenticatedBody(
              context: context,
            ),
          );
        },
      ),
    );
  }
}
