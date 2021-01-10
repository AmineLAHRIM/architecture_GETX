import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_app_spotify/ui/themes/dark/dark_theme.dart';
import 'package:music_app_spotify/ui/themes/default/default_theme.dart';

class AppTheme {


  static ThemeData _themeData;
  static SystemUiOverlayStyle _systemUiOverlayStyle;


  static ThemeData get themeData {
    bool isDarkMode = false;
    if (isDarkMode) {
      return DarkTheme.themeData;
    }
    return DefaultTheme.themeData;
  }

  static SystemUiOverlayStyle get systemUiOverlayStyle {
    bool isDarkMode = false;
    if (isDarkMode) {
      return DarkTheme.systemUiOverlayStyle;
    }
    return DefaultTheme.systemUiOverlayStyle;
  }


  static final SystemUiOverlayStyle systemUiTrans = SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  );
}