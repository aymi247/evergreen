import 'package:flutter/material.dart';

import '../../Questionairres/stress/components/question9_body.dart';

class QuestionNineScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("STRESS (9 of 10)")
      ),
      body: Body(),
    );
  }
}