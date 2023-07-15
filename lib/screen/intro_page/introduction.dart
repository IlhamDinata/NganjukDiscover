import 'package:flutter/material.dart';
import 'package:nganjuk_discover/screen/intro_page/intropage1.dart';
import 'package:nganjuk_discover/screen/intro_page/intropage2.dart';
import 'package:nganjuk_discover/screen/intro_page/intropage3.dart';
import 'package:nganjuk_discover/screen/login_register_page/login_page.dart';
import 'package:nganjuk_discover/utils/mytext.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:page_transition/page_transition.dart';

import '../../utils/dimens.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  PageController controller = PageController();
  bool onLastIntroPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                onLastIntroPage = (index == 2);
              });
            },
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
                GestureDetector(
                  onTap: () {
                    controller.jumpToPage(2);
                  },
                  child: Text(
                    'Skip',
                    style: MyText().buttontext,
                  ),
                ),
                SmoothPageIndicator(controller: controller, count: 3),
                onLastIntroPage
                    ? GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return LoginPage();
                          //     },
                          //   ),
                          // );
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: LoginPage(),
                                  type: PageTransitionType.fade));
                        },
                        child: Text(
                          'Done',
                          style: MyText().buttontext,
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          controller.nextPage(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text(
                          'Next',
                          style: MyText().buttontext,
                        ),
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
