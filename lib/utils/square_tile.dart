import 'package:flutter/material.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';
import 'package:nganjuk_discover/utils/mytext.dart';

class SquareTileGrey extends StatelessWidget {
  const SquareTileGrey(
      {super.key, required this.imagePath, required this.text, this.onTap});

  final Function()? onTap;
  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: MyColor.white),
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 40,
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: MyText().nametext,
          )
        ],
      ),
    );
  }
}

class SquareTileWhite extends StatelessWidget {
  const SquareTileWhite(
      {super.key, required this.imagePath, required this.text, this.onTap});

  final Function()? onTap;
  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: MyColor.background),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 40,
            ),
            SizedBox(width: 10),
            Text(
              text,
              style: MyText().titlehomepage,
            )
          ],
        ),
      ),
    );
  }
}
