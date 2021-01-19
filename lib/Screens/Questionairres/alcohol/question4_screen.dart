import 'package:flutter/material.dart';

import '../../Questionairres/alcohol/components/question4_body.dart';

class QuestionFourScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("ALCOHOL & CIGERATTES (4 of 10)")
      ),
      body: Body(),
    );
  }
}