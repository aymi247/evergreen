import 'package:flutter/material.dart';

import 'components/question6_body.dart';

class SocialHistoryQuestion6Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Social History")
      ),
      body: Body(),
    );
  }
}