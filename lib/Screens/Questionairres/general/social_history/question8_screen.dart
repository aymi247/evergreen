import 'package:flutter/material.dart';

import 'components/question8_body.dart';

class SocialHistoryQuestion8Screen extends StatelessWidget{
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