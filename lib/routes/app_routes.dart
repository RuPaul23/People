import 'package:flutter/material.dart';
import 'package:people/Intro_Page/Intro_Page.dart';
import 'package:people/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:people/presentation/home_page_screen/home_page_screen.dart';
import 'package:people/presentation/profile_screen/Profile_Page.dart';
import 'package:people/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signInScreen = '/sign_in_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String introPageScreen = '/Intro_Page';

  static Map<String, WidgetBuilder> routes = {
    introPageScreen: (context) => IntroPageScreen(),
    signInScreen: (context) => SignInScreen(),
    homePageScreen: (context) => HomePageScreen(),
    profileScreen: (context) => ProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
