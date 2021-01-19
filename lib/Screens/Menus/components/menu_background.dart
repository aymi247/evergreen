
import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';


class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key, 
    @required this.child, this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return 
    Container(
      color: kPrimaryLighterColor,
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/green_leaf.png",
              width: size.width * 0.35,
            ),
          ),
          child,
        ],
      ),
    );
  }
}