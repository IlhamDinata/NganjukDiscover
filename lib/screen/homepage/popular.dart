import 'package:flutter/material.dart';
import 'package:nganjuk_discover/utils/mytext.dart';
import 'package:nganjuk_discover/utils/square_tile.dart';
import 'package:tuple/tuple.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  static const List<Tuple2> tutorials = [const Tuple2<String, String>('', '')];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular in town',
                style: MyText().titlehomepage,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View all',
                  style: MyText().smallbuttontext,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
