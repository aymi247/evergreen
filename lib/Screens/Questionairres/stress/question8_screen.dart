import 'package:flutter/material.dart';

import '../../Questionairres/stress/components/question8_body.dart';

class QuestionEightScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("STRESS (8 of 10)")
      ),
      body: Body(),
    );
  }
}