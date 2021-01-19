import 'package:flutter/material.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/Screens/Menus/main_menu_screen.dart';
import 'background.dart';

class Body extends StatefulWidget{
  Body({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double age = 18;

  void _handleAgeChange(double value) {
    setState(() {
      // update the new age of the slider
      age = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "HOW OLD ARE YOU ?", 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            age.toStringAsFixed(0) + " years", 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,)
          ),
          SizedBox(height: size.height * 0.05),
          Slider(
            activeColor: kPrimaryColor,
            inactiveColor: kPrimaryLightColor,
              min: 18,
              max: 100,
              value: age,
              onChanged: (value){
              _handleAgeChange(value);
          }
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "NEXT",
            press: () {
              Navigator.of(context).push(_mainMenuRoute());
            },
          ),
        ],
      ),
    );
  }
}

Route _mainMenuRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MainMenuScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
