import 'package:flutter/material.dart';

import '../../Questionairres/culinary_coaching/components/introduction_screen_body.dart';

class CulinaryCoachingScreen extends StatelessWidget{
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