import 'package:flutter/material.dart';

import '../../Questionairres/stress/components/question1_body.dart';

class QuestionOneScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("STRESS (1 of 10)")
      ),
      body: Body(),
    );
  }
}