import 'package:flutter/material.dart';

import '../../../Questionairres/general/complementary_and_alternative_medicine/components/question2_body.dart';

class CAMQuestion2Screen extends StatelessWidget{
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