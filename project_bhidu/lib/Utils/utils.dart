import 'package:flutter/material.dart';

void showSnackBar(String labelText, BuildContext context,
    {Color color = const Color(0xffE97F5C)}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 6),
      action: SnackBarAction(
        textColor: Colors.white,
        label: "Dismiss",
        onPressed: () {},
      ),
      backgroundColor: color,
      content: Text(
        labelText,
      ),
    ),
  );
}
