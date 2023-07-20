import 'package:flutter/material.dart';

class WisataPage extends StatelessWidget {
  const WisataPage({super.key});

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
        return PopularContent(index: index);
      },
    );
  }
}
