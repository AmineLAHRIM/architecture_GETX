import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultTheme {
  // Colors
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
  static Color borderCard = Color(0xFF707070).withOpacity(0.5);
  static const Color fb = Color(0xFF0041A8);
  static const Color twitter = Color(0xFF42AAFF);
  static const Color google = Color(0xFFF2F8FF);
  static const Color footertext = Color(0xFFC5CEE0);
  static const double radius = 10.0;

  // ThemeData
  static final ThemeData themeData = ThemeData(
      scaffoldBackgroundColor: bg,
      backgroundColor: bg,
      brightness: Brightness.light,
      primaryColor: headlineTextColor,
      textTheme: textTheme,
      /*colorScheme: ColorScheme(
        primary: Color(0xFF64BA02),
        secondary: Color(0xFF64BA02),
        primaryVariant: primary
      )*/
  );

  // TextTheme
  static final TextTheme textTheme = TextTheme(
    headline1: headline1,
    headline2: headline2,
    headline3: headline3,
    headline4: headline4,
    headline5: headline5,
    headline6: headline6,
    button: button,
    subtitle1: subtitle1,
    subtitle2: subtitle2,
    bodyText1: bodyText1,
    bodyText2: bodyText2,
  );

  // SystemUiOverlayStyle
  static final SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
    systemNavigationBarColor: headlineTextColor,
    statusBarColor: headlineTextColor,
    statusBarIconBrightness: Brightness.light,
  );



  // Text Styles
  static final TextStyle headline1 = TextStyle(
    color: headlineTextColor,
    fontFamily: "DellaRespira",
    fontSize: 48,
  );
  static final TextStyle headline2 = TextStyle(
    fontFamily: "Lato",
    color: headlineTextColor,
    fontSize: 32,
  );
  static final TextStyle headline3 = TextStyle(
    color: headlineTextColor,
    fontFamily: "Lato",
    fontSize: 24,
  );
  static final TextStyle headline4 = TextStyle(
    color: headlineTextColor,
    fontWeight: FontWeight.w900,
    fontFamily: "Lato",
    fontSize: 18,
  );
  static final TextStyle headline5 = TextStyle(
    color: headlineTextColor,
    fontWeight: FontWeight.w900,
    fontFamily: "Lato",
    fontSize: 16,
  );
  static final TextStyle headline6 = TextStyle(
    color: subTitleTextColor,
    fontWeight: FontWeight.w600,
    fontFamily: "Lato",
    fontSize: 16,
  );

  static final TextStyle button = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w900,
    fontFamily: "Lato",
    fontSize: 18,
  );

  static final TextStyle subtitle1 = TextStyle(
    color: headlineTextColor,
    fontWeight: FontWeight.w900,
    fontFamily: "Lato",
    fontSize: 14,
  );

  static final TextStyle subtitle2 = TextStyle(
    color: subTitleTextColor,
    fontWeight: FontWeight.w900,
    fontFamily: "Lato",
    fontSize: 14,
  );

  static final TextStyle bodyText1 = TextStyle(
    color: headlineTextColor,
    fontFamily: "Poppins",
    fontSize: 12,
    letterSpacing: 1,
  );

  static final TextStyle bodyText2 = TextStyle(
    color: subTitleTextColor,
    fontFamily: "Poppins",
    fontSize: 12,
    letterSpacing: 1,
  );
}
