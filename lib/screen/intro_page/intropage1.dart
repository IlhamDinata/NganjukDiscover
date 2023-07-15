import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/dimens.dart';
import '../../utils/mycolors.dart';
import '../../utils/mytext.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset('assets/NganjukLogoNew.png'),
            ),
            SizedBox(height: Dimens(context).height * 0.05),
            Container(
              // width: 300,
              // height: 300,
              child: Lottie.asset('assets/nganjukdiscover3.json'),
            ),
            SizedBox(height: Dimens(context).height * 0.06),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget interdum nibh. In ultricies vel. ",
                style: MyText().introductiontext,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
