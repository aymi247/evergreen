import 'package:flutter/material.dart';

import '../../Questionairres/alcohol/components/question5_body.dart';

class QuestionFiveScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("ALCOHOL & CIGERATTES (5 of 10)")
      ),
      body: Body(),
    );
  }
}