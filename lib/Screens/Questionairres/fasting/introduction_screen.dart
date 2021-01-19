import 'package:flutter/material.dart';

import '../../Questionairres/fasting/components/introduction_screen_body.dart';

class FastingRegimeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Fasting Regime")
      ),
      body: Body(),
    );
  }
}