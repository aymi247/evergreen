import 'package:flutter/material.dart';

import '../../../Questionairres/general/complementary_and_alternative_medicine/components/question1_body.dart';

class CAMQuestion1Screen extends StatelessWidget{
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