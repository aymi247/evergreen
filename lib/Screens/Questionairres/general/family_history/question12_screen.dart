import 'package:flutter/material.dart';

import 'components/question12_body.dart';

class FamilyQuestion12Screen extends StatelessWidget{
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