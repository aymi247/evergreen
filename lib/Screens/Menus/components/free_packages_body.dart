import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Menus/components/menu_item.dart';
import 'menu_background.dart';
import 'package:flutter_app/Screens/Tools/bmi.dart';

class Body extends StatelessWidget{
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: 
      GridView.count(   
        padding: const EdgeInsets.all(30),
        crossAxisCount: 2,
        children: <Widget>[
          MenuItem(image: "assets/images/BMI.png", size: size, text: "BMI Calculator", tap: (){Navigator.of(context).push(_bmiRoute());}),
        ],
      ),
    );
  }
}

Route _bmiRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => BMIScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

