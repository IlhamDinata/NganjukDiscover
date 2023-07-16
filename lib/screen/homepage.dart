import 'package:flutter/material.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';
import 'package:nganjuk_discover/utils/mytext.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.black,
      appBar: AppBar(
        title: Text(
          'HomePage',
          style: MyText().introductiontext,
        ),
        centerTitle: true,
      ),
    );
  }
}
