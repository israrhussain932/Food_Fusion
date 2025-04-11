import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final String  hinText;
  const PasswordTextField({super.key,
    required this.hinText});
  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}
class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = false;
  @override
  Widget build(BuildContext context) {
    return   TextField(
      obscureText: _obscureText,
      decoration: InputDecoration(
          hintText: "Enter Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: IconButton(
            icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });

            },
          )),
    );
  }
}

