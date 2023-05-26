import 'package:flutter/widgets.dart';
import 'package:flutter_project/screens/notificate/notification_page.dart';
import 'package:flutter_project/screens/details/detail_screens.dart';
import 'package:flutter_project/screens/onboarding_screen.dart';
import 'package:flutter_project/screens/Favourite/favourite_page.dart';
import 'package:flutter_project/screens/profile/profile_page.dart';
import 'package:flutter_project/screens/timer/timer_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  // HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
  FavouritePage.routeName: (context) => FavouritePage(),
  NotificationPage.routeName: (context) => NotificationPage(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
