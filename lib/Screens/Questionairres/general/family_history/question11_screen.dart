import 'package:flutter/material.dart';

import 'components/question11_body.dart';

class FamilyQuestion11Screen extends StatelessWidget{
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