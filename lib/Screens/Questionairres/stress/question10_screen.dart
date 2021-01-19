import 'package:flutter/material.dart';

import '../../Questionairres/stress/components/question10_body.dart';

class QuestionTenScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("STRESS (10 of 10)")
      ),
      body: Body(),
    );
  }
}