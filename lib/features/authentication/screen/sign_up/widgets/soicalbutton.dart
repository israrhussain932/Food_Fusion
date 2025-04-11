import 'package:flutter/material.dart';
import 'package:foodfusion/utils/constants/images.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Image.asset(
            Images.google,
            width: 35,
          ),
          onPressed: () {},
        ),
        SizedBox(width: 10),
        IconButton(
          icon: Image.asset(
            Images.facebook,
            width: 35,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}