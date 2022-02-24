import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
    CustomText({
     this.text = '',
     this.fontSize = 15,
     this.color = Colors.black,
  });
  final String text;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize,color: color),
      ),
      
    );
  }
}
