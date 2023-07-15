import 'package:flutter/material.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';

import '../../utils/dimens.dart';
import '../../utils/mytext.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Wisata Nganjuk",
              style: MyText().introductionkuliner,
            ),
            SizedBox(height: Dimens(context).height * 0.03),
            Container(
              width: 300,
              height: 300,
              child: Image.asset('assets/wisatapage.png'),
            ),
            SizedBox(height: Dimens(context).height * 0.03),
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
