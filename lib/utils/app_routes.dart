import 'package:get/route_manager.dart';
import 'package:nganjuk_discover/screen/homepage.dart';
import 'package:nganjuk_discover/screen/intro_page/introduction.dart';
import 'package:nganjuk_discover/screen/login_register_page/login_page.dart';
import 'package:nganjuk_discover/screen/login_register_page/register_page.dart';
import 'package:nganjuk_discover/utils/app_pages.dart';

class AppRoute {
  static const initial = AppPages.introduction;
  static final pages = [
    GetPage(name: PagesPath.introduction, page: () => IntroductionPage()),
    GetPage(name: PagesPath.loginpage, page: () => LoginPage()),
    GetPage(name: PagesPath.registerpage, page: () => RegisterPage()),
    GetPage(name: PagesPath.homepage, page: () => HomePage()),
  ];
}
