import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Questionairres/components/introduction/main_section.dart';
import 'package:flutter_app/Screens/Questionairres/general/complementary_and_alternative_medicine/question1_screen.dart';
import 'package:flutter_app/components/rounded_button.dart';
import '../../../../constants.dart';
import '../../background.dart';

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
            "HAVE YOU OR DO YOU SUFFER FROM ANY OF THE FOLLOWING", 
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)
          ),
          MainSection(size: size, text: "Please tick & give details where applicable!", image: "assets/images/consultation.png"),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "PROCEED",
            press: () { Navigator.of(context).push(_questionOneRoute()); },
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            color: kPrimaryLightColor,
            text: "BACK",
            press: () { Navigator.of(context).pop();},
          ),
        ],
      ),
    );
  }
}

Route _questionOneRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => CAMQuestion1Screen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
