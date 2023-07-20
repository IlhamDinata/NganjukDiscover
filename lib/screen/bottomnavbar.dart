import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          body: IndexedStack(
            index: controller.tabindex,
            children: [
              HomePage(),
              NavigatePage(),
              WishlistPage(),
              SettingPage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: MyColor.white,
            unselectedItemColor: MyColor.grey,
            currentIndex: controller.tabindex,
            onTap: controller.changeTabIndex,
            items: [
              _bottombarItem(IconlyBold.home, "Home"),
              _bottombarItem(Icons.navigation_outlined, "Navigate"),
              _bottombarItem(IconlyBold.heart, "Wishlist"),
              _bottombarItem(IconlyBold.setting, "Setting"),
            ],
          ),
        );
      },
    );
  }
}

_bottombarItem(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
