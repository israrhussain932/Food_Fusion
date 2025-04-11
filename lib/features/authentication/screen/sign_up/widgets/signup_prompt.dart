
import 'package:flutter/material.dart';
import 'package:foodfusion/utils/constants/text_string.dart';

class signup_prompt extends StatelessWidget {
  final text;
  final btnText;
  final VoidCallback onPressed;


  const signup_prompt({
    super.key,
    required this.text,
    required this.btnText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        TextButton(onPressed: onPressed,
            child: Text(btnText,style: TextStyle(color: Colors.orange),))
      ],
    );
  }
}