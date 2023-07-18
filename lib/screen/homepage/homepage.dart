import 'package:flutter/material.dart';
import 'package:nganjuk_discover/screen/homepage/icon_category.dart';
import 'package:nganjuk_discover/screen/homepage/popular.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';
import 'package:nganjuk_discover/utils/mytext.dart';
import 'package:nganjuk_discover/utils/square_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'HomePage',
      //     style: MyText().titlelogregtext,
      //   ),
      //   centerTitle: true,
      //   backgroundColor: MyColor.background,
      //   elevation: 0,
      //   leading: IconButton(onPressed: onPressed, icon: icon),
      // ),
      backgroundColor: MyColor.background,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        // padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          // border: Border.all(color: MyColor.white),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.apps),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Current Location',
                            style: MyText().transparanttext2,
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: MyColor.three),
                              // IconButton(
                              //   splashRadius: 25,
                              //   onPressed: () {},
                              //   icon: Icon(
                              //     Icons.location_on,
                              //     color: MyColor.three,
                              //   ),
                              // ),
                              Text(
                                'Loceret, Nganjuk',
                                style: MyText().titlehomepage,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        // padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          // border: Border.all(color: MyColor.white),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              IconCategory(),
              const SizedBox(height: 15),
              Popular(),
            ],
          ),
        ),
      ),
    );
  }
}
