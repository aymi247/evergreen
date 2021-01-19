import 'package:flutter/material.dart';

import 'components/question4_body.dart';

class SocialHistoryQuestion4Screen extends StatelessWidget{
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