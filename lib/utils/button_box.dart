import 'package:flutter/material.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';
import 'package:nganjuk_discover/utils/mytext.dart';

class ButtonBox extends StatelessWidget {
  ButtonBox({super.key, this.onTap, this.label});

  final Function()? onTap;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
        child: Text('${label}', style: MyText().buttonbox),
      ),
    );
  }
}
