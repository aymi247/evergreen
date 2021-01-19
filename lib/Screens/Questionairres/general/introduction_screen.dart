import 'package:flutter/material.dart';

import '../../Questionairres/general/components/introduction_screen_body.dart';

class GeneralScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Lifestyle Package Guide")
      ),
      body: Body(),
    );
  }
}