import 'package:flutter/material.dart';

import 'components/question2_body.dart';


class SocialHistoryQuestion2Screen extends StatelessWidget{
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