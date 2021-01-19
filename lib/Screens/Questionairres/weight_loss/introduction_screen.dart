import 'package:flutter/material.dart';

import '../../Questionairres/weight_loss/components/introduction_screen_body.dart';

class WeightLossPlanScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Weight Loss Plan")
      ),
      body: Body(),
    );
  }
}