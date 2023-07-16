import 'package:flutter/material.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';
import 'package:nganjuk_discover/utils/mytext.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: Center(child: Text('Home Page')),
    );
  }
}
