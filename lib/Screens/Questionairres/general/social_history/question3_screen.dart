import 'package:flutter/material.dart';

import 'components/question3_body.dart';

class SocialHistoryQuestion3Screen extends StatelessWidget{
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