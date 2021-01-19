import 'package:flutter/material.dart';

import '../../Questionairres/general/components/question1_body.dart';

class Question1Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Lifestyle Package Guide")
      ),
      body: Body(),
    );
  }
}