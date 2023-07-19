import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nganjuk_discover/model/content_model.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';
import 'package:nganjuk_discover/utils/mytext.dart';
import 'package:nganjuk_discover/utils/square_tile.dart';
import 'package:tuple/tuple.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return GridView.count(
  //     crossAxisSpacing: 5,
  //     mainAxisSpacing: 5,
  //     crossAxisCount: 2,
  //     shrinkWrap: true,
  //     physics: NeverScrollableScrollPhysics(),
  //     children: List.generate(
  //       8,
  //       (index) {
  //         return Container(
  //           child: Card(
  //             color: MyColor.white,
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 350,
          childAspectRatio: 1.1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemCount: Content.contents.length,
      itemBuilder: (BuildContext context, int index) {
        return ContentCard(index: index);
      },
    );
  }
}

class ContentCard extends StatelessWidget {
  final int index;
  ContentCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 750,
      child: Container(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        decoration: BoxDecoration(
            border: Border.all(color: MyColor.white),
            borderRadius: BorderRadius.circular(15),
            color: MyColor.white),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    Content.contents[index].image,
                    width: 100,
                    height: 100,
                  ),
                ),
                // Align(
                //   child: likeButton(context),
                //   alignment: Alignment.topRight,
                // )
              ],
            ),
            Text(
              Content.contents[index].title,
              textAlign: TextAlign.center,
              style: MyText().titlecontent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, color: MyColor.grey.withOpacity(0.6)),
                Text(
                  Content.contents[index].insideContent,
                  style: MyText().transparanttext2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

likeButton(BuildContext context) {
  return Padding(
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
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: MyColor.white,
            ),
          ),
        ),
      ),
    ),
  );
}
