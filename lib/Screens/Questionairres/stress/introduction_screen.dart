import 'package:flutter/material.dart';

import '../../Questionairres/stress/components/introduction_screen_body.dart';

class StressPackageIntroductionScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Stress Management Clinic")
      ),
      body: Body(),
    );
  }
}