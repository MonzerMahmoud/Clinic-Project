
import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: primaryColor),
        child: TextButton(
          onPressed: onPressed,
          child:
              Text(text, style: TextStyle(color: Colors.white, fontSize: 20)),
        ));
  }
}
