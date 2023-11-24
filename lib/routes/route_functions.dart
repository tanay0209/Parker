import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutingFunctions {
  goToLoginPage(
    BuildContext context,
    GlobalKey<FormState> formKey,
    String userName,
    String email,
    String password,
  ) async {
    FocusScope.of(context).unfocus();
    if (formKey.currentState!.validate()) {
      dynamic response = false;
      // await AuthFunctions().userSignUp(
      //     userName, firstName, lastName, email, password, dateOfBirth, branch);
      if (response != null) {
        Get.showSnackbar(GetSnackBar(
          title: 'Sign Up Successfull',
        ));
        Get.offAllNamed('/login');
      } else {
        Get.showSnackbar(GetSnackBar(title: 'Invalid Values'));
      }
    }
  }
}
