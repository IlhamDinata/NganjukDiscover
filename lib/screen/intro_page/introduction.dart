import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nganjuk_discover/screen/intro_page/intropage1.dart';
import 'package:nganjuk_discover/screen/intro_page/intropage2.dart';
import 'package:nganjuk_discover/screen/intro_page/intropage3.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';
import 'package:nganjuk_discover/utils/mytext.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/dimens.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip
                GestureDetector(
                  onTap: () {
                    controller.jumpToPage(2);
                  },
                  child: Text('Skip'),
                ),

                //indicator
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                ),

                // next or done
                GestureDetector(
                  onTap: () {
                    controller.nextPage(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
