import 'package:flutter/material.dart';
import 'package:har/create_account.dart';
import 'package:har/get_help.dart';
import 'package:har/get_help_detail.dart';
import 'package:har/home.dart';
import 'package:har/info_detail.dart';
import 'package:har/information.dart';
import 'package:har/onboarding_one.dart';
import 'package:har/reach_out.dart';
import 'package:har/sign_in.dart';
import 'package:har/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HAR',
      theme: ThemeData(
          primaryColor: Color.fromRGBO(203, 32, 64, 1),
          accentColor: Color.fromRGBO(250, 233, 236, 1)),
      home: SplashScreen(),
      routes: {
        SplashScreen.route: (_) => SplashScreen(),
        OnboardingOne.route: (_) => OnboardingOne(),
        CreateAccount.route: (_) => CreateAccount(),
        SignIn.route: (_) => SignIn(),
        HomeScreen.route: (_) => HomeScreen(),
        InformationScreen.route: (_) => InformationScreen(),
        InfoDetail.route: (_) => InfoDetail(),
        GetHelp.route: (_) => GetHelp(),
        ReachOut.route: (_) => ReachOut(),
        GetHelpDetail.route: (_) => GetHelpDetail(),
      },
    );
  }
}
