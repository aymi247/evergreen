import 'package:flutter/material.dart';

import '../../Questionairres/alcohol/components/question9_body.dart';

class QuestionNineScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("ALCOHOL & CIGERATTES (9 of 10)")
      ),
      body: Body(),
    );
  }
}