import 'package:flutter/material.dart';

Widget BigText(String titleText, double size) {
  return Text(
    titleText,
    style: TextStyle(
      //color: Colors.black87,
      color: Colors.white,
      fontSize: size,
      fontWeight: FontWeight.bold,
    ),
  );
}
