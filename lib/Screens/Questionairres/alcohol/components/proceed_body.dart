import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Menus/packages_menu.dart';
import 'package:flutter_app/Screens/Questionairres/components/introduction/main_section.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/constants.dart';
import '../../background.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // total height and width of the screen
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MainSection(
            size: size, 
            text: "WELCOME TO ALCOHOL & CIGERATTE CESATION PACKAGE (FEE: N 5,000).\n\n You are almost done! Clicking proceed will take you to the payment page to complete your registration for the package.\n\nAfter this, you will have unlimited access to your plan!.", image: "assets/images/alcohol.png"),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "PROCEED",
            press: () {
              Navigator.of(context).push(_proceedRoute());
            },
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "CANCEL",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.of(context).push(_packagesRoute());
            },
          ),
        ],
      )
    );
  }
}

Route _proceedRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => PackagesScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route _packagesRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => PackagesScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

