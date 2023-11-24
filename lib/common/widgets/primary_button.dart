import 'package:flutter/material.dart';
import 'package:parker/common/colors.dart';
import 'package:parker/common/constants.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  const PrimaryButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ColorStyles.primaryColor),
          textStyle: MaterialStateProperty.all(
            TextStyle(color: ColorStyles.white),
          ),
        ),
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
