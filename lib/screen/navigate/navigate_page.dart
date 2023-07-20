import 'package:flutter/material.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';

class NavigatePage extends StatelessWidget {
  const NavigatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: Center(
        child: Text('Navigate Page'),
      ),
    );
  }
}
