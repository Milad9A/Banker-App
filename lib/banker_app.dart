// @dart = 2.9

import 'package:banker/providers/authentication/authentication/authentication_bloc.dart';
import 'package:banker/providers/payment/payment_bloc.dart';
import 'package:banker/repositories/payment_repository.dart';
import 'package:banker/views/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config/theme/custom_theme.dart';
import 'repositories/user_repository.dart';

class BankerApp extends StatefulWidget {
  @override
  _BankerAppState createState() => _BankerAppState();
}

class _BankerAppState extends State<BankerApp> {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthenticationBloc(
            userRepository: UserRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => PaymentBloc(
            paymentRepository: PaymentRepository(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Outline',
        debugShowCheckedModeBanner: false,
        theme: CustomTheme.lightTheme,
        navigatorKey: navigatorKey,
        home: SplashScreen(),
      ),
    );
  }
}
