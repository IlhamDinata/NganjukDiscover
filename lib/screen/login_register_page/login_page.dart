import 'package:flutter/material.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: Center(
        child: Text('login page'),
      ),
    );
  }
}
