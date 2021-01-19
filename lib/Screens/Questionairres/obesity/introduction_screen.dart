import 'package:flutter/material.dart';

import '../../Questionairres/obesity/components/introduction_screen_body.dart';

class ObesityClinicIntroductionScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Obesity Clinic")
      ),
      body: Body(),
    );
  }
}