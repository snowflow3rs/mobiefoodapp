import 'package:flutter/material.dart';
import 'package:flutter_project/routes.dart';

import 'package:flutter_project/screens/onboarding_screen.dart';
import 'package:flutter_project/login_screens/login_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_project/provider/favorite_provider.dart';
import 'package:flutter_project/provider/cart_provider.dart';
import 'package:get/get.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FavoriteProvider()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnBoardingScreen(),
        initialRoute: OnBoardingScreen.routeName,
        routes: routes,
        theme: themeData(context),
        darkTheme: darkThemeData(context),
        themeMode: ThemeMode.light,
      ),
    );
  }
}
