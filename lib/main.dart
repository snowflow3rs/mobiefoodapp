import 'package:flutter/material.dart';
import 'package:flutter_project/default_layout_page.dart';
import 'package:flutter_project/onboarding_screen.dart';
import 'package:flutter_project/login_screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
