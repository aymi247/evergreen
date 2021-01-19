import 'package:flutter/material.dart';

import 'components/packages_body.dart';

class PackagesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Evergreen Packages")
      ),
      body: Body(),
    );
  }
}