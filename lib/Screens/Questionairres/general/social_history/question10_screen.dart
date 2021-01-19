import 'package:flutter/material.dart';

import 'components/question10_body.dart';

class SocialHistoryQuestion10Screen extends StatelessWidget{
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