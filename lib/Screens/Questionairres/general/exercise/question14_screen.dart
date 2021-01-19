import 'package:flutter/material.dart';

import 'components/question14_body.dart';

class FamilyQuestion14Screen extends StatelessWidget{
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