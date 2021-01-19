
import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key key,
    this.text,
    this.tap,
    this.image,
    @required this.size,
  }) : super(key: key);

  final Size size;
  final String text;
  final Function tap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { Navigator.of(context).pop(); },
      child: Card(
            margin: EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              onTap: tap,
              splashColor: kPrimaryLightColor,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[Column(
                    children: [
                      Image.asset(
                        image,
                        width: size.width * 0.20,
                      ),
                      Text(text, style: new TextStyle(fontSize: 17.0), textAlign: TextAlign.center,
                        ),
                    ],
                  ),
                  ],
                ),
              ),
            ),
          ),
      );
  }
}