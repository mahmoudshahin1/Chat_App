import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {required this.hintText,
      this.onChange,
      this.obscureText = false,
      this.suffixIcon});
  String? hintText;
  bool? obscureText;
  Function(String)? onChange;
  Widget? suffixIcon;
  String? Function(String?)? valdtor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: valdtor,
      onChanged: onChange,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          labelText: hintText,
          labelStyle: const TextStyle(color: Colors.white),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          border: const OutlineInputBorder(borderSide: BorderSide())),
    );
  }
}
