import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Questionairres/components/introduction/main_section.dart';
import 'package:flutter_app/Screens/Questionairres/general/exercise/question1_screen.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/components/rounded_input_field.dart';
import '../../../../../constants.dart';
import '../../../questionairre_background.dart';

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

class OptionList {
  String name;
  int index;
  OptionList({this.name, this.index});
}

class _BodyState extends State<Body> {
  // Default Radio Button Item
  String radioItem = 'Yes';
 
  // Group Value for Radio Button.
  int id = 1;
 
  List<OptionList> fList = [
    OptionList(
      index: 1,
      name: "Yes",
    ),
    OptionList(
      index: 2,
      name: "No",
    ),
  ];
 

  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: size.height * 0.01),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: MainSection(size: size, text: "Is there anything else you feel we should know?", image: "assets/images/consultation.png"),
          ),
          SizedBox(height: size.height * 0.02),
          RoundedInputField(
            hintText: "Please type here",
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "PROCEED",
            press: () { Navigator.of(context).push(_question1Route()); },
          ),
          SizedBox(height: size.height * 0.01),
          RoundedButton(
            color: kPrimaryLightColor,
            text: "BACK",
            press: () { Navigator.of(context).pop();},
          ),
          SizedBox(height: size.height * 0.02),
        ],
      ),
    );
  }
}

Route _question1Route() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ExerciseQuestion1Screen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
