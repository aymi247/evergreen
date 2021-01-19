import 'package:flutter/material.dart';

import '../constants.dart';

class GenderSelector extends StatelessWidget {
  final Widget child;
  
  const GenderSelector({
    Key key, 
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5,),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: kPrimaryColor, 
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}