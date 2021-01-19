import 'package:flutter/material.dart';

import 'components/question5_body.dart';

class CAMQuestion5Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Comp. & Alt. Medicine (CAM)")
      ),
      body: Body(),
    );
  }
}