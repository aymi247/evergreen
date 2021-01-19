import 'package:flutter/material.dart';

import '../../Questionairres/stress/components/question5_body.dart';

class QuestionFiveScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("STRESS (5 of 10)")
      ),
      body: Body(),
    );
  }
}