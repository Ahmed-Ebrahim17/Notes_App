import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text, this.maxLines = 1});
  final String text;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xFF62FCD7),
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        hintText: text,
        hintStyle: const TextStyle(
          fontSize: 13,
        ),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(KPrimaryColor),
      ),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color ?? Colors.white),
        borderRadius: BorderRadius.circular(8));
  }
}
