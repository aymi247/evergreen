import 'package:flutter/material.dart';

import 'components/question2_body.dart';


class ExerciseQuestion2Screen extends StatelessWidget{
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