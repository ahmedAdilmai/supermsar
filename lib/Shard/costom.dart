// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextInputType textInputTypee;
  final bool ispassword;
  final String hinttexttt;
  const MyTextField({
    Key? key,
    required this.textInputTypee,
    required this.ispassword,
    required this.hinttexttt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: textInputTypee,
        obscureText: ispassword,
        decoration: InputDecoration(
          hintText: hinttexttt,
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent),
          ),
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ));
  }
}
