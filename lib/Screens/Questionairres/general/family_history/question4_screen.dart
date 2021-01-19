import 'package:flutter/material.dart';

import 'components/question4_body.dart';

class FamilyQuestion4Screen extends StatelessWidget{
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