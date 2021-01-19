import 'package:flutter/material.dart';

import 'components/question6_body.dart';

class FamilyQuestion6Screen extends StatelessWidget{
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