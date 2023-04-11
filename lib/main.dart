import 'package:flutter/material.dart';
import 'package:jobs_app/pages/home_page.dart';
import 'package:jobs_app/pages/second_homepage.dart';
import 'package:jobs_app/pages/sign_up.dart';
import 'package:jobs_app/pages/started_page.dart';
import 'package:jobs_app/pages/sign_in.dart';
import 'package:jobs_app/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/getstarted': (context) => StartedPage(),
        '/signin': (context) => SignInPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
