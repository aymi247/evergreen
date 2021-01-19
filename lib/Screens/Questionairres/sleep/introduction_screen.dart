import 'package:flutter/material.dart';

import '../../Questionairres/sleep/components/introduction_screen_body.dart';

class SleepClinicIntroductionScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Sleep Clinic")
      ),
      body: Body(),
    );
  }
}