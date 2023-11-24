import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parker/common/colors.dart';

class PaymentProcessing extends StatefulWidget {
  const PaymentProcessing({super.key});

  @override
  State<PaymentProcessing> createState() => _PaymentProcessingState();
}

class _PaymentProcessingState extends State<PaymentProcessing> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.offAllNamed('/paymentsuccessful');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.secondaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/processing.png'),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Processing...',
              style: TextStyle(
                color: ColorStyles.white,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
