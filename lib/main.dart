import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nganjuk_discover/controller/auth_controller.dart';
import 'package:nganjuk_discover/screen/homepage.dart';
import 'package:nganjuk_discover/screen/intro_page/splashscreen.dart';
import 'package:nganjuk_discover/utils/app_pages.dart';
import 'package:nganjuk_discover/utils/app_routes.dart';
import 'package:nganjuk_discover/utils/error.dart';
import 'package:nganjuk_discover/utils/loading.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  final authController = Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const ErrorScreen();
        }

        if (snapshot.connectionState == ConnectionState.done) {
          // return GetMaterialApp(
          //   title: 'Nganjuk Discover ',
          //   debugShowCheckedModeBanner: false,
          //   initialRoute: PagesPath.forgotpassword,
          //   getPages: AppRoute.pages,
          // );
          return FutureBuilder(
            future: Future.delayed(const Duration(seconds: 3)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Obx(
                  () => GetMaterialApp(
                    title: 'Nganjuk Discover',
                    debugShowCheckedModeBanner: false,
                    initialRoute: authController.isSkipIntro.isTrue
                        ? authController.isAuth.isTrue
                            ? PagesPath.homepage
                            : PagesPath.loginpage
                        : PagesPath.introduction,
                    // initialRoute: AppPages.introduction,
                    getPages: AppRoute.pages,
                  ),
                );
              }
              return SplashScreen();
            },
          );
        }
        return const LoadingScreen();
      },
    );
  }
}
