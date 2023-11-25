import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parker/controllers/auth/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RoutingFunctions {
  goToLoginPage(
    BuildContext context,
    GlobalKey<FormState> formKey,
    String userName,
    String email,
    String password,
    String role,
  ) async {
    FocusScope.of(context).unfocus();
    if (formKey.currentState!.validate()) {
      dynamic response = await AuthFunctions().userSignUp(
        userName,
        email,
        password,
        role,
      );
      if (response != null) {
        Get.snackbar("Success", "Sign Up Successful",
            snackPosition: SnackPosition.BOTTOM);
        Get.offAllNamed('/login');
      } else {
        Get.snackbar("Error", "Invalid Values",
            snackPosition: SnackPosition.BOTTOM);
      }
    }
  }

  goToLandingPage(BuildContext context, GlobalKey<FormState> formKey,
      String userName, String password) async {
    FocusScope.of(context).unfocus();
    if (formKey.currentState!.validate()) {
      dynamic response =
          await AuthFunctions().loginAuthentication(userName, password);
      if (response != null) {
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setBool("loggedIn", true);
        Get.snackbar("Success", "Sign Up Successful",
            snackPosition: SnackPosition.BOTTOM);
        Get.offAllNamed('/home');
      } else {
        Get.snackbar(
          "Error",
          "Invalid Values",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    }
  }

  goToBookSlot() {
    Get.toNamed('/bookslot');
  }
}
