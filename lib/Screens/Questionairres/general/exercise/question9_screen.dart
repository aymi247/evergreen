import 'package:flutter/material.dart';

import 'components/question9_body.dart';

class ExerciseQuestion9Screen extends StatelessWidget{
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