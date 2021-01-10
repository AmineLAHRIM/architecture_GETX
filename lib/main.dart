import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app_spotify/config/injection.dart';
import 'package:music_app_spotify/ui/pages/home_page.dart';
import 'package:music_app_spotify/ui/pages/page2.dart';
import 'package:music_app_spotify/ui/pages/splash_page.dart';
import 'package:music_app_spotify/ui/themes/app_theme.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      theme: AppTheme.themeData,
      // smartManagement: SmartManagement.full,
      initialRoute: SplashPage.routeName,
      getPages: [
        GetPage(
          name: SplashPage.routeName,
          page: () => SplashPage(),
        ),
        GetPage(
          name: HomePage.routeName,
          page: () => HomePage(),
        ),
        GetPage(
          name: Page2.routeName,
          page: () => Page2(),
        ),
      ],
    );
  }
}
