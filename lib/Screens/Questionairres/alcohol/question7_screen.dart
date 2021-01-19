import 'package:flutter/material.dart';

import '../../Questionairres/alcohol/components/question7_body.dart';

class QuestionSevenScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("ALCOHOL & CIGERATTES (7 of 10)")
      ),
      body: Body(),
    );
  }
}