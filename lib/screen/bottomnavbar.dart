import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconly/iconly.dart';
import 'package:nganjuk_discover/controller/bottomnavbar_controller.dart';
import 'package:nganjuk_discover/screen/homepage/homepage.dart';
import 'package:nganjuk_discover/screen/navigate/navigate_page.dart';
import 'package:nganjuk_discover/screen/setting/setting_page.dart';
import 'package:nganjuk_discover/screen/wishlist/wishlist_page.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final controller = Get.put(BottomNavBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(
      builder: (context) {
        return Scaffold(
          //  backgroundColor: MyColor.black,
          body: IndexedStack(
            index: controller.tabindex,
            children: [
              HomePage(),
              NavigatePage(),
              WishlistPage(),
              SettingPage(),
            ],
          ),
          bottomNavigationBar: Container(
            // color: MyColor.black,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
                color: MyColor.black),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 45,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade600,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 5)
                        ]),
                    child: const TextField(
                      textAlignVertical: TextAlignVertical.center,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: 'Search your place',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GNav(
                    backgroundColor: MyColor.black,
                    color: MyColor.grey,
                    activeColor: MyColor.white,
                    tabBackgroundColor: Colors.grey.shade800,
                    gap: 7,
                    padding: EdgeInsets.all(15),
                    onTabChange: controller.changeTabIndex,
                    tabs: [
                      _gButtonitem(IconlyLight.home, "Home"),
                      _gButtonitem(Icons.navigation_outlined, "Navigate"),
                      _gButtonitem(IconlyLight.heart, "Wishlist"),
                      _gButtonitem(IconlyLight.setting, "Setting"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   backgroundColor: MyColor.black,
          //   selectedItemColor: MyColor.three,
          //   unselectedItemColor: MyColor.grey,
          //   currentIndex: controller.tabindex,
          //   onTap: controller.changeTabIndex,
          //   items: [
          //     _bottombarItem(IconlyLight.home, "Home"),
          //     _bottombarItem(Icons.navigation_outlined, "Navigate"),
          //     _bottombarItem(IconlyLight.heart, "Wishlist"),
          //     _bottombarItem(IconlyLight.setting, "Setting"),
          //   ],
          // ),
        );
      },
    );
  }
}

_gButtonitem(IconData icon, String label) {
  return GButton(icon: icon, text: label);
}

// _bottombarItem(IconData icon, String label) {
//   return BottomNavigationBarItem(icon: Icon(icon), label: label);
// }
