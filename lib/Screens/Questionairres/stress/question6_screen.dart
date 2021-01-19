import 'package:flutter/material.dart';

import '../../Questionairres/stress/components/question6_body.dart';

class QuestionSixScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("STRESS (6 of 10)")
      ),
      body: Body(),
    );
  }
}