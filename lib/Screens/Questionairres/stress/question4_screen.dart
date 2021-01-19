import 'package:flutter/material.dart';

import '../../Questionairres/stress/components/question4_body.dart';

class QuestionFourScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("STRESS (4 of 10)")
      ),
      body: Body(),
    );
  }
}