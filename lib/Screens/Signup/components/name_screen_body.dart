import 'package:flutter/material.dart';
import 'package:flutter_app/components/rounded_button.dart';
import 'package:flutter_app/components/rounded_input_field.dart';
import '../email_screen.dart';
import 'background.dart';

class Data {
  final int id;
  final String data;

  Data({this.data, this.id});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["data"] = this.data;
    return data;
  }
}

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
            "WHAT IS YOUR NAME ?", 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)
          ),
          Image.asset(
            "assets/images/avatar.png", 
            height: size.height * 0.2,
          ),
          RoundedInputField(
            hintText: "Your Name",
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "NEXT",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => EmailScreen(name: "Ime"
                ),                                           
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}


