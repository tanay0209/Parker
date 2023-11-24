import 'package:flutter/material.dart';
import 'package:parker/common/colors.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/congratulations.png'),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Congratulations!',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
