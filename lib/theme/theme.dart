import 'package:flutter/material.dart';
import 'package:floward_task/theme/theme_collection.dart';
import 'package:floward_task/theme/theme_model.dart';

enum DarkOption { dynamic, alwaysOn, alwaysOff }

class AppTheme {
  ///Default font
  static String currentFont = "Baloo_2";

  ///List Font support
  static List<String> fontSupport = ['Baloo_2'];

  ///Default Theme
  static ThemeModel currentTheme = ThemeModel.fromJson({
    "name": "default",
    "color": const Color(0xFFFCB036),
    "light": "primaryLight",
    "dark": "primaryDark",
  });

  ///List Theme Support in Application
  static List themeSupport = [
    {
      "name": "default",
      "color": const Color(0xFFFCB036),
      "light": "primaryLight",
      "dark": "primaryDark",
    },
  ].map((item) => ThemeModel.fromJson(item)).toList();

  ///Dark Theme option
  static DarkOption darkThemeOption = DarkOption.dynamic;

  static ThemeData lightTheme = ThemeCollection.getCollectionTheme(
    theme: currentTheme.lightTheme,
  );

  static ThemeData darkTheme = ThemeCollection.getCollectionTheme(
    theme: currentTheme.darkTheme,
  );

  ///Singleton factory
  static final AppTheme _instance = AppTheme._internal();

  factory AppTheme() {
    return _instance;
  }

  AppTheme._internal();
}
