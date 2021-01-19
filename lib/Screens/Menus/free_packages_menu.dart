import 'package:flutter/material.dart';

import 'components/free_packages_body.dart';

class FreePackagesScreen extends StatelessWidget{
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