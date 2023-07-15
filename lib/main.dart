import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorScreen();
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            title: 'Nganjuk Discover',
            debugShowCheckedModeBanner: false,
            initialRoute: AppPages.introduction,
            getPages: AppRoute.pages,
          );
        }
        return LoadingScreen();
      },
    );
  }
}
