import 'package:flutter/material.dart';

String fontFamily = 'LuxuriousRoman';

TextStyle headingTextStyle = TextStyle(
  fontSize: 35,
  fontWeight: FontWeight.w500,
  fontFamily: fontFamily,
);

ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.black,
    shadowColor: Colors.black,
    fixedSize: Size(270, 50),
    elevation: 8.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    textStyle: TextStyle(
      fontSize: 25,
      letterSpacing: 0.5,
    ));
