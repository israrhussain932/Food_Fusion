
import 'package:flutter/material.dart';
import 'package:foodfusion/utils/constants/colors.dart';

class custom_elevatedbutton extends StatelessWidget {
  final String text;
  final Color? color;
  final VoidCallback onPressed;
  final IconData? icon;
  const custom_elevatedbutton({
    super.key,
    required this.text,
    this.color,
    required this.onPressed,
    this.icon,


  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 8),
            Icon(icon,color: Colors.white,size: 18,),
          ],
        ),
      ),
    );
  }
}
