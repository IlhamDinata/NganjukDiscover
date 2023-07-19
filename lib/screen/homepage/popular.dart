import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
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
          maxCrossAxisExtent: 300,
          childAspectRatio: 1.1,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15),
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
      // width: 250,
      // height: 750,
      child: Container(
        // padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        decoration: BoxDecoration(
            border: Border.all(color: MyColor.white),
            borderRadius: BorderRadius.circular(15),
            color: MyColor.white),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  // decoration: BoxDecoration(boxShadow: [
                  //   BoxShadow(
                  //       offset: Offset(0, 0.1),
                  //       blurRadius: 10,
                  //       spreadRadius: 0.1,
                  //       blurStyle: BlurStyle.normal)
                  // ]),
                  padding: const EdgeInsets.only(top: 5, left: 3, right: 3),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      Content.contents[index].image,
                      fit: BoxFit.cover,
                      width: 130,
                      height: 100,
                    ),
                  ),
                ),
                likeButton(context),
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
    padding: const EdgeInsets.all(10),
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: MyColor.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Icon(
            IconlyLight.heart,
            size: 15,
            color: Colors.black,
          ),
        ),
      ),
    ),
  );
}
