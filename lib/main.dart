import 'package:flutter/material.dart';
import 'package:parker/view/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Parker());
}

class Parker extends StatelessWidget {
  const Parker({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashScreen(),
    );
  }
}
