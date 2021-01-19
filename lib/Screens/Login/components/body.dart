import 'package:flutter/material.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/components/rounded_input_field.dart';
import 'package:flutter_app/components/rounded_password_field.dart';
import 'package:flutter_app/Screens/Signup/name_screen.dart';
import '../../../constants.dart';
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
            "LOGIN", 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)
          ),
          Image.asset(
            "assets/images/login.png", 
            height: size.height * 0.2,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            hintText: "Password",
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "LOGIN",
            press: () {},
          ),
          SizedBox(height: size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Don't have an Account ? ",
                style: TextStyle(
                  color: kPrimaryColor,
                )
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(_nameRoute());
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold, 
                  ),
                ),
              )
            ],
          ),
        ],
      ),
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
