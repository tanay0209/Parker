import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      dynamic response = false;
      // await AuthFunctions().userSignUp(
      //     userName, firstName, lastName, email, password, dateOfBirth, branch);
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
}
