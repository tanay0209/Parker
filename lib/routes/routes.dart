import 'package:flutter/material.dart';
import 'package:parker/view/splash_screen.dart';

class MyRoutes{
  static Route<dynamic> routes(RouteSettings settings){
    switch(settings.name){
      case:'/':
      return PageTransition(
        child:const SplashScreen(),
        type:PageTransitionType.rigthToLeft
      );
    }
  }
}