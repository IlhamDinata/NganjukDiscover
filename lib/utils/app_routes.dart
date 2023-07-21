import 'package:get/route_manager.dart';
import 'package:nganjuk_discover/screen/bottomnavbar.dart';
import 'package:nganjuk_discover/screen/category/kuliner/kuliner_page.dart';
import 'package:nganjuk_discover/screen/category/wisata/wisata_page.dart';
import 'package:nganjuk_discover/screen/content/inside_content.dart';
import 'package:nganjuk_discover/screen/homepage/homepage.dart';
import 'package:nganjuk_discover/screen/intro_page/introduction.dart';
import 'package:nganjuk_discover/screen/login_register_page/forgot_password/email_sent.dart';
import 'package:nganjuk_discover/screen/login_register_page/forgot_password/forgot_password.dart';
import 'package:nganjuk_discover/screen/login_register_page/login_page.dart';
import 'package:nganjuk_discover/screen/login_register_page/register_page.dart';
import 'package:nganjuk_discover/screen/navigate/navigate_page.dart';
import 'package:nganjuk_discover/screen/setting/setting_page.dart';
import 'package:nganjuk_discover/screen/wishlist/wishlist_page.dart';
import 'package:nganjuk_discover/utils/app_pages.dart';

class AppRoute {
  static const initial = AppPages.introduction;
  static final pages = [
    GetPage(name: PagesPath.introduction, page: () => IntroductionPage()),
    GetPage(name: PagesPath.loginpage, page: () => LoginPage()),
    GetPage(name: PagesPath.forgotpassword, page: () => ForgotPasswordPage()),
    GetPage(name: PagesPath.emailsent, page: () => EmailSentPage()),
    GetPage(name: PagesPath.registerpage, page: () => RegisterPage()),
    GetPage(name: PagesPath.bottomnavbar, page: () => BottomNavBar()),
    GetPage(name: PagesPath.homepage, page: () => HomePage()),
    GetPage(name: PagesPath.navigatepage, page: () => NavigatePage()),
    GetPage(name: PagesPath.wishlistpage, page: () => WishlistPage()),
    GetPage(name: PagesPath.settingpage, page: () => SettingPage()),
    GetPage(name: PagesPath.wisatapage, page: () => WisataPage()),
    GetPage(name: PagesPath.kulinerpage, page: () => KulinerPage()),
    GetPage(name: PagesPath.insidecontent, page: () => InsideContent()),
  ];
}
