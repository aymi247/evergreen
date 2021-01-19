import 'package:flutter/material.dart';

import '../../Questionairres/alcohol/components/introduction_screen_body.dart';

class AlcoholPackageIntroductionScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("ALCOHOL & CIGERATTE CESSATION PACKAGE")
      ),
      body: Body(),
    );
  }
}