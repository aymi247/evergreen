import 'package:flutter/material.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/constants.dart';
import '../age_screen.dart';
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
  String _radioValue = 'male';

  void _handleGenderRadioValueChange(String value) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _radioValue = value;

      switch (_radioValue) {
        case 'male':
          break;
        case 'female':
          break;
      }
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
            "WHAT IS YOUR GENDER ?", 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)
          ),
          SizedBox(height: size.height * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Radio(
                    activeColor: kPrimaryColor,
                    value: 'male',
                    groupValue: _radioValue,
                    onChanged: _handleGenderRadioValueChange,
                  ),
                Text(
                  "I AM MALE",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,)
                ),
                Image.asset(
                  "assets/images/male_avatar.png", 
                  height: size.height * 0.08,
                ),
            ],
          ), 
          SizedBox(height: size.height * 0.01),                
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[ 
              new Radio(
                activeColor: kPrimaryColor,
                value: 'female',
                groupValue: _radioValue,
                onChanged: _handleGenderRadioValueChange,
              ),
              Text(
                  "I AM FEMALE",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,)
                ),
                Image.asset(
                  "assets/images/female_avatar.png", 
                  height: size.height * 0.08,
                ),
            ],
          ),
          SizedBox(height: size.height * 0.04),
          RoundedButton(
            text: "NEXT",
            press: () {
              Navigator.of(context).push(_ageRoute());
            },
          ),
        ],
      ),
    );
  }
}

Route _ageRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => AgeScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
