import 'package:flutter/material.dart';

import '../../Questionairres/intervention/components/introduction_screen_body.dart';

class DiabetesIntroductionScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Intervention for Diabetics, Hypertensive Patients & Others")
      ),
      body: Body(),
    );
  }
}