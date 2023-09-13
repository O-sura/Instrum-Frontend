import 'package:flutter/material.dart';

Widget SmallText(String titleText, double size) {
  return Text(
    titleText,
    style: TextStyle(
      //color: Colors.black54,
      color: Colors.white54,
      fontSize: size,
    ),
  );
}
