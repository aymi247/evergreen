import 'package:flutter/material.dart';

import 'components/question7_body.dart';

class SocialHistoryQuestion7Screen extends StatelessWidget{
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