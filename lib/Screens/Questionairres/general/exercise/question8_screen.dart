import 'package:flutter/material.dart';

import 'components/question8_body.dart';

class ExerciseQuestion8Screen extends StatelessWidget{
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