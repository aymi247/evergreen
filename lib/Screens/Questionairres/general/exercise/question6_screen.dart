import 'package:flutter/material.dart';

import 'components/question6_body.dart';

class ExerciseQuestion6Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Exercise")
      ),
      body: Body(),
    );
  }
}