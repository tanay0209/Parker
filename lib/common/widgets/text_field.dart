import 'package:flutter/material.dart';

class TextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool hidden;
  final TextEditingController controller;
  final String? Function(String?) validatorFunction;
  const TextField(
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
        // style: TextStyle(color: Styles.tertiaryColor),
        // cursorColor: Styles.tertiaryColor,
        validator: validatorFunction,

        controller: controller,
        obscureText: hidden,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(
            10,
            12,
            10,
            8,
          ),
          errorStyle: TextStyle(
              // backgroundColor: Styles.transparent,
              ),
          filled: true,
          label: Text(label),
          // fillColor: Styles.inputBoxColor,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              // color: Styles.tertiaryColor,
              ),
        ),
      ),
    );
  }
}
