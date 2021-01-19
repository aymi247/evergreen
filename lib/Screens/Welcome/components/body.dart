import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Login/login_screen.dart';
import 'package:flutter_app/Screens/Welcome/components/background.dart';
import 'package:flutter_app/Screens/Signup/name_screen.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/constants.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // total height and width of the screen
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "WELCOME TO EVERGREEN LIFESTYLE",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20,),
          ),
          SizedBox(height: size.height * 0.03),
          Image.asset(
            "assets/images/logo.png",
            height: size.height * 0.32,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "BEGIN",
            press: () {
              Navigator.of(context).push(_nameRoute());
            },
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "LOGIN",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.of(context).push(_loginRoute());
            },
          ),
        ],
      )
    );
  }
}

Route _nameRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => NameScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
Route _loginRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => LoginScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

