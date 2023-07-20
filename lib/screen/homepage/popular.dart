import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:nganjuk_discover/model/content_model.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';
import 'package:nganjuk_discover/utils/mytext.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 1.1,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15),
        itemCount: Content.contents.length,
        itemBuilder: (BuildContext context, int index) {
          return PopularContent(index: index);
        },
      ),
    );
  }
}

class PopularContent extends StatelessWidget {
  final int index;
  PopularContent({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
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
                    Content.contents[index].location,
                    style: MyText().transparanttext2,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

likeButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: InkWell(
      onTap: () {},
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
