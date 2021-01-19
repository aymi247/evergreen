import 'package:flutter/material.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/components/rounded_input_field.dart';
import '../gender_screen.dart';
import 'background.dart';

class Body extends StatefulWidget{
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "WHAT IS YOUR EMAIL ?", 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)
          ),
          Image.asset(
            "assets/images/email.png", 
            height: size.height * 0.2,
          ),
          RoundedInputField(
            controller: myController,
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "NEXT",
            press: () {
              Navigator.of(context).push(_genderRoute());
            },
          ),
        ],
      ),
    );
  }
}

Route _genderRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => GenderScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
