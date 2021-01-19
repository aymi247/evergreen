import 'package:flutter/material.dart';

import '../../Questionairres/alcohol/components/question2_body.dart';

class QuestionTwoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("ALCOHOL & CIGERATTES (2 of 10)")
      ),
      body: Body(),
    );
  }
}