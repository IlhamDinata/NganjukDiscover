import 'package:flutter/material.dart';
import 'package:nganjuk_discover/model/content_model.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';
import 'package:nganjuk_discover/utils/mytext.dart';

class ContentWisata extends StatelessWidget {
  final int index;
  ContentWisata({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Content == Content.contents[index].category) {
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
      );
    } else {}
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
