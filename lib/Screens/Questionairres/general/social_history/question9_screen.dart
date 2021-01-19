import 'package:flutter/material.dart';

import 'components/question9_body.dart';

class SocialHistoryQuestion9Screen extends StatelessWidget{
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