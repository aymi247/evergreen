import 'package:flutter/material.dart';
import 'package:flutter_app/components/text_field_container.dart';

import '../constants.dart';

class RoundedInputField extends StatelessWidget {
  final hintText;
  final controller;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key key, 
    this.hintText, 
    this.icon = Icons.person, 
    this.onChanged,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
          ),
      )
    );
  }
}
