import 'package:flutter/material.dart';
import 'package:parker/common/constants.dart';
import 'package:parker/routes/routes.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      initialRoute: '/',
    );
  }
}
