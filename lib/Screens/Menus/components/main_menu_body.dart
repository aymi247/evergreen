import 'package:flutter/material.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/Screens/Questionairres/general/introduction_screen.dart';
import 'package:flutter_app/Screens/Menus/free_packages_menu.dart';
import 'background.dart';

class Body extends StatelessWidget{
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "WHAT WOULD YOU LIKE TO DO ?", 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)
          ),
          SizedBox(height: size.height * 0.045),
          Image.asset(
            "assets/images/healthy_lifestyle.jpg", 
            height: size.height * 0.3,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "ACCESS HEALTH PACKAGES",
            press: () {
              Navigator.of(context).push(_packagesMenuRoute());
            },
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "USE OUR FREE TOOLS",
            press: () {
              Navigator.of(context).push(_freePackagesMenuRoute());
            },
          ),
        ],
      ),
    );
  }
}

Route _packagesMenuRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => GeneralScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route _freePackagesMenuRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => FreePackagesScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

