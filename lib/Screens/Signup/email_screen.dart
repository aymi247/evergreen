import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Signup/components/email_screen_body.dart';

class EmailScreen extends StatelessWidget{
final name;
const EmailScreen({
    Key key, this.name
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}