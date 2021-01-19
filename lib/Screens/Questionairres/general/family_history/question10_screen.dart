import 'package:flutter/material.dart';

import 'components/question10_body.dart';

class FamilyQuestion10Screen extends StatelessWidget{
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