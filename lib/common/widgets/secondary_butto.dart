import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:parker/common/colors.dart';
import 'package:parker/common/constants.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final Callback onTap;
  const SecondaryButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8,
                ),
              ),
            ),
            backgroundColor: ColorStyles.secondaryColor),
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(
            color: ColorStyles.white,
          ),
        ),
      ),
    );
  }
}
