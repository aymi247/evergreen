import 'package:flutter/material.dart';

import 'components/question13_body.dart';

class FamilyQuestion13Screen extends StatelessWidget{
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