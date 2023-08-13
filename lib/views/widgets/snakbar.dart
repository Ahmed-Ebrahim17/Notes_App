import 'package:flutter/material.dart';

void showSnakBar(BuildContext context, String text, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height - 175,
          left: 130,
          right: 130),
      backgroundColor: color,
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      content: Center(
          child: Text(
        text,
      )),
    ),
  );
}
