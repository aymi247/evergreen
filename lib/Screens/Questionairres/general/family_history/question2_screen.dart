import 'package:flutter/material.dart';

import 'components/question2_body.dart';


class FamilyQuestion2Screen extends StatelessWidget{
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