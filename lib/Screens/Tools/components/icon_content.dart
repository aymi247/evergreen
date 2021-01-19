
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final icon;
  final label;
  final iconColor;

  const IconContent({
    Key key, this.icon, this.label, this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Icon(
        icon, 
        size: 80.0,
        color: Color(0xFF2dce89),
      ),
      SizedBox(height: 15.0,),
      Text(label, style: TextStyle(
          fontSize: 18.0, 
          color: iconColor,
        ),
      ),
    ],);
  }
}


