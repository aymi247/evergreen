
import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

class MainSection extends StatelessWidget {
  const MainSection({
    Key key,
    this.text,
    this.image,
    @required this.size,
  }) : super(key: key);

  final Size size;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {  },
      child: Card(
            margin: EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              splashColor: kPrimaryLightColor,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[Column(
                    children: [
                      Image.asset(
                        image,
                        width: size.width * 0.40,
                      ),
                      Text(text, style: new TextStyle(fontSize: 17.0), textAlign: TextAlign.center,
                        ),
                      SizedBox(height: size.height * 0.03),  
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