import 'package:flutter/material.dart';
import 'package:couple_counter/constants.dart';

class MyTextField extends StatelessWidget {
  late final String hint;
  late final TextEditingController controller;

  MyTextField({required this.hint, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 18,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}
