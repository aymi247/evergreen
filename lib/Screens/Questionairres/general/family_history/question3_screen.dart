import 'package:flutter/material.dart';

import 'components/question3_body.dart';

class FamilyQuestion3Screen extends StatelessWidget{
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