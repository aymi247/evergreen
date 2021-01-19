import 'package:flutter/material.dart';

import 'components/question5_body.dart';

class ExerciseQuestion5Screen extends StatelessWidget{
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