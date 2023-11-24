import 'package:flutter/material.dart';
import 'package:parker/common/colors.dart';

class InputField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool hidden;
  final TextEditingController controller;
  final String? Function(String?) validatorFunction;
  const InputField(
      {super.key,
      required this.label,
      required this.hintText,
      required this.hidden,
      required this.controller,
      required this.validatorFunction});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        style: TextStyle(color: ColorStyles.primaryColor),
        cursorColor: ColorStyles.primaryColor,
        validator: validatorFunction,
        controller: controller,
        obscureText: hidden,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(),
          errorBorder: const OutlineInputBorder(),
          contentPadding: const EdgeInsets.fromLTRB(
            10,
            12,
            10,
            8,
          ),
          label: Text(label),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
