
import 'package:flutter/material.dart';

class Email_textfield extends StatelessWidget {
  final String hintText;
  const Email_textfield({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}