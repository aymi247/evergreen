import 'package:flutter/material.dart';

import '../../Questionairres/stress/components/question3_body.dart';

class QuestionThreeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("STRESS (3 of 10)")
      ),
      body: Body(),
    );
  }
}