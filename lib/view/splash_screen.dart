import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parker/common/colors.dart';
import 'package:parker/common/constants.dart';
import 'package:parker/routes/routes.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => {
              Get.toNamed(Routes.signup)
              //   if (loggedIn && !occupied)
              //     {Get.toNamed(Routes.home)}
              //   else if (loggedIn && occupied)
              //     {Get.toNamed(Routes.map)}
              //   else
              //     {
              //       {Get.toNamed(Routes.login)}
              //     }
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.white,
      body: Center(
        child: Text(
          'Park-Ker',
          style: TextStyle(
            color: ColorStyles.secondaryColor,
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
