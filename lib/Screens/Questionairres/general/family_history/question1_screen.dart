import 'package:flutter/material.dart';

import 'components/question1_body.dart';

class FamilyQuestion1Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Family History")
      ),
      body: Body(),
    );
  }
}