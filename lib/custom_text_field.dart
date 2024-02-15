import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final InputBorder? inputBorder;
  final InputBorder? enableBorder;
  final InputBorder? focusedBorder;
  final Color? fillColor;
  final Color? focusColor;

  const CustomTextField(
      {super.key, this.inputBorder, this.fillColor, this.focusColor, this.enableBorder, this.focusedBorder});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: inputBorder,
        enabledBorder: enableBorder,
        focusedBorder: focusedBorder,
        fillColor: fillColor,
        focusColor: focusColor,
      ),
    );
  }
}
