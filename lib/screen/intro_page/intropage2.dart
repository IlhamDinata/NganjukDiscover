import 'package:flutter/material.dart';
import 'package:nganjuk_discover/utils/dimens.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';
import 'package:nganjuk_discover/utils/mytext.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Kulineran Nganjuk",
              style: MyText().introductionkuliner,
            ),
            SizedBox(height: Dimens(context).height * 0.03),
            SizedBox(
              width: 300,
              height: 300,
              child: Image.asset('assets/gambar/kulinerannganjuk.png'),
            ),
            SizedBox(height: Dimens(context).height * 0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
