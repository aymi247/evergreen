import 'package:flutter/material.dart';

import '../../Questionairres/lifestyle/components/introduction_screen_body.dart';

class LifestylePackageIntroductionScreen extends StatelessWidget{
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