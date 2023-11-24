import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parker/view/splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class Routes {
  static String splashScreen = '/';
  static String loginScreen = '/';
  static String signupScreen = '/';
  static String homeScreen = '/';
}

final getPages = [
  GetPage(
    name: Routes.splashScreen,
    page: () => const SplashScreen(),
  )
];
