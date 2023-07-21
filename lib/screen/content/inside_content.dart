import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nganjuk_discover/model/content_model.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';

class InsideContent extends StatelessWidget {
  InsideContent({super.key});

  final Content insideContent = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(insideContent.image),
            ),
            buttonArrow(context),
            DraggableScrollableSheet(
              initialChildSize: 0.6,
              maxChildSize: 1.0,
              minChildSize: 1.0,
              builder: (context, scrollController) {
                return Container(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: MyColor.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 5,
                              width: 35,
                              color: MyColor.black,
                            ),
                          ],
                        ),
                      ),
                      Text(insideContent.title),
                      const SizedBox(height: 10),
                      Text(insideContent.location),
                      const Row(
                        children: [],
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

buttonArrow(BuildContext context) {
  Padding(
    padding: const EdgeInsets.all(20),
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              color: MyColor.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
    ),
  );
}
