import 'package:flutter/material.dart';

import '../../Questionairres/stress/components/question2_body.dart';

class QuestionTwoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("STRESS (2 of 10)")
      ),
      body: Body(),
    );
  }
}