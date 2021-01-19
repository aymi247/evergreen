import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Questionairres/components/introduction/main_section.dart';
import 'package:flutter_app/components/rounded_button.dart';
import '../../../../../constants.dart';
import '../../../questionairre_background.dart';
import '../question5_screen.dart';

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
  String radioItem = '3 to 4 times a week';
 
  // Group Value for Radio Button.
  int id = 1;
 
  List<OptionList> fList = [
    OptionList(
      index: 1,
      name: "3 to 4 times a week",
    ),
    OptionList(
      index: 2,
      name: "1 to 2 times a week",
    ),
    OptionList(
      index: 3,
      name: "less than once a week",
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
            child: MainSection(size: size, text: "How often do you shop for food?", image: "assets/images/banana.jpg"),
          ),
          SizedBox(height: size.height * 0.01),
          Container(
            height: size.height * 0.25,
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
            ),
          RoundedButton(
            text: "PROCEED",
            press: () { Navigator.of(context).push(_question5Route()); },
          ),
          SizedBox(height: size.height * 0.01),
          RoundedButton(
            color: kPrimaryLightColor,
            text: "BACK",
            press: () { Navigator.of(context).pop();},
          ),
          SizedBox(height: size.height * 0.05),
        ],
      ),
    );
  }
}

Route _question5Route() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ExerciseQuestion5Screen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
