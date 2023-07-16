import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';
import 'package:nganjuk_discover/utils/mytext.dart';

class ButtonBox extends StatelessWidget {
  const ButtonBox({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.snackbar('Login', 'Login Successfully');
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: MyColor.three,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: MyColor.black.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
        ),
        child: Text('Sign In', style: MyText().buttonbox),
      ),
    );
  }
}
