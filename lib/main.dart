import 'package:flutter/material.dart';
import 'package:parker/common/constants.dart';
import 'package:parker/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences preferences = await SharedPreferences.getInstance();
  // loggedIn = preferences.getBool("loggedIn");
  // occupied = preferences.getBool('occupied');

  runApp(
    const Parker(),
  );
}

class Parker extends StatelessWidget {
  const Parker({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: getPages,
      initialRoute: '/home',
    );
  }
}
