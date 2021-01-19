import 'package:flutter/material.dart';

import 'components/proceed_body.dart';

class StressProceedScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("PROCEED TO PACKAGE")
      ),
      body: Body(),
    );
  }
}