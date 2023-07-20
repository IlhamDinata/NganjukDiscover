import 'package:flutter/material.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: Center(
        child: Text('Setting Page'),
      ),
    );
  }
}
