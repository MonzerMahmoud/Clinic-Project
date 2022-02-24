import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({this.text  = '',this.hintText=''});
  final String text;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: text,
          fontSize: 20,
          color: Colors.grey.shade900,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            fillColor: Colors.white
          ),
        )
      ],
    );
  }
}
