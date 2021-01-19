import 'package:flutter/material.dart';

import 'components/question10_body.dart';

class ExerciseQuestion10Screen extends StatelessWidget{
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