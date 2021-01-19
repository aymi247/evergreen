import 'package:flutter/material.dart';

import 'components/question5_body.dart';

class SocialHistoryQuestion5Screen extends StatelessWidget{
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