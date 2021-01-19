import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Questionairres/alcohol/question6_screen.dart';
import 'package:flutter_app/Screens/Questionairres/components/introduction/main_section.dart';
import 'package:flutter_app/components/rounded_button.dart';
import '../../../../constants.dart';
import '../../background.dart';

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
  String radioItem = 'Never';
 
  // Group Value for Radio Button.
  int id = 1;
 
  List<OptionList> fList = [
    OptionList(
      index: 1,
      name: "Never",
    ),
    OptionList(
      index: 2,
      name: "Less than Monthly",
    ),
    OptionList(
      index: 3,
      name: "Monthly",
    ),
    OptionList(
      index: 4,
      name: "Weekly",
    ),
    OptionList(
      index: 5,
      name: "Daily or almost daily",
    ),
  ];
 

  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MainSection(size: size, text: "5.	During the past year, how often have you failed to do what was normally expected of you because of drinking?", image: "assets/images/alcohol.png"),
          SizedBox(height: size.height * 0.02),
          Expanded(
            child: Container(
            height: 150.0,
            child: Column(
              children: 
                fList.map((data) => RadioListTile(
                  title: Text("${data.name}"),
                  groupValue: id,
                  value: data.index,
                  onChanged: (val) {
                    setState(() {
                      radioItem = data.name ;
                      id = data.index;
                    });
                  },
                )).toList(),
            ),
          )),
          RoundedButton(
            text: "PROCEED",
            press: () { Navigator.of(context).push(_questionSixRoute()); },
          ),
          SizedBox(height: size.height * 0.01),
          RoundedButton(
            color: kPrimaryLightColor,
            text: "BACK",
            press: () { Navigator.of(context).pop();},
          ),
          SizedBox(height: size.height * 0.09),
        ],
      ),
    );
  }
}

Route _questionSixRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => QuestionSixScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
