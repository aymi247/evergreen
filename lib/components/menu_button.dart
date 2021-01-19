
import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

class MenuButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const MenuButton({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: FlatButton(
          color: color,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 18),
          )
        )
      )
    );
  }
}