import 'package:flutter/material.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';

class TextBox extends StatelessWidget {
  TextBox(
      {super.key,
      required this.controller,
      required this.text,
      required this.textInputType,
      required this.obscure});

  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 15, top: 3),
      decoration: BoxDecoration(
        color: MyColor.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: MyColor.black.withOpacity(0.1),
            blurRadius: 7,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(0),
          hintStyle: TextStyle(height: 1),
        ),
      ),
    );
  }
}
