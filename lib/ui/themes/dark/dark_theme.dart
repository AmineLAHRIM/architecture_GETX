import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_app_spotify/ui/themes/default/default_theme.dart';

class DarkTheme{
  static const Color appBackgroundColor = Color(0xFFFFF7EC);
  static const Color topBarBackgroundColor = Color(0xFFFFD974);
  static const Color selectedTabBackgroundColor = Color(0xFFFFC442);
  static const Color primary = Color(0xFF64BA02);
  static const Color secondary = Color(0xFFF5F8FD);
  static const Color danger = Color(0xFFE02020);
  static const Color success = Color(0xFF6DD400);
  static const Color warning = Color(0xFFF7B500);
  static const Color info = Color(0xFF0095FF);
  static const Color headlineTextColor = Color(0xFF1C1D20);
  static const Color subTitleTextColor = Color(0xFF707586);
  static const Color bg = Color(0xFFFFFFFF);
  static const Color secondaryBg = Color(0xFFF5F8FD);
  static Color shadow = Color(0xFF191818);
  static  Color borderCard = Color(0xFF707070).withOpacity(0.5);
  static const Color fb = Color(0xFF0041A8);
  static const Color twitter = Color(0xFF42AAFF);
  static const Color google = Color(0xFFF2F8FF);
  static const Color footertext = Color(0xFFC5CEE0);
  static const double radius = 10.0;

  // ThemeData
  static final ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    primaryColor: bg,
    textTheme: textTheme,
  );

  // TextTheme
  static final TextTheme textTheme = TextTheme(
    headline1: DefaultTheme.headline1.copyWith(color: Colors.white),
    headline2: DefaultTheme.headline2.copyWith(color: Colors.white),
    headline3: DefaultTheme.headline3.copyWith(color: Colors.white),
    headline4: DefaultTheme.headline4.copyWith(color: Colors.white),
    headline5: DefaultTheme.headline5.copyWith(color: Colors.white),
    headline6: DefaultTheme.headline6.copyWith(color: Colors.white),
    button: DefaultTheme.button.copyWith(color: headlineTextColor),
    subtitle1: DefaultTheme.subtitle1.copyWith(color: Colors.white),
    subtitle2: DefaultTheme.subtitle2.copyWith(color: Colors.white),
    bodyText1: DefaultTheme.bodyText1.copyWith(color: primary),
    bodyText2: DefaultTheme.bodyText2.copyWith(color: secondaryBg),
  );

  // SystemUiOverlayStyle
  static final SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  );
}