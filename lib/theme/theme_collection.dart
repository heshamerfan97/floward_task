import 'package:flutter/material.dart';

class ThemeCollection {
  static const primaryColor = Color(0xFF4051B5);
  static const secondaryColor = Color(0xFFEA1F63);

  ///Get collection theme
  /// primaryLight
  static ThemeData getCollectionTheme(
      {String theme = "primaryLight", String? font}) {
    switch (theme) {
      case "primaryLight":
        return ThemeData(
          primarySwatch: const MaterialColor(4294750262, {
            50: Color(0xFFd9dcf0),
            100: Color(0xFFb3b9e1),
            200: Color(0xFF8c97d3),
            300: Color(0xFF6674c4),
            400: primaryColor,
            500: Color(0xFF3a49a3),
            600: Color(0xFF2d397f),
            700: Color(0xFF20295b),
            800: Color(0xFF131836),
            900: Color(0xFF060812)
          }),
          fontFamily: font,
          brightness: Brightness.light,
          primaryColor: primaryColor,
          primaryColorBrightness: Brightness.dark,
          primaryColorLight: const Color(0xFF8c97d3),
          primaryColorDark: const Color(0xFF2d397f),
          canvasColor: const Color(0xffffffff),
          scaffoldBackgroundColor: const Color(0xFFF1F2F6),
          bottomAppBarColor: const Color(0xffffffff),
          cardColor: const Color(0xffffffff),
          dividerColor: const Color(0x1f000000),
          highlightColor: const Color(0x66bcbcbc),
          splashColor: const Color(0x66c8c8c8),
          selectedRowColor: const Color(0xfff5f5f5),
          unselectedWidgetColor: const Color(0x8a000000),
          disabledColor: const Color(0x61000000),
          toggleableActiveColor: primaryColor,
          secondaryHeaderColor: const Color(0xfffcebe9),
          textSelectionTheme: const TextSelectionThemeData(
            selectionColor: primaryColor,
            cursorColor: Color(0xFF2d397f),
            selectionHandleColor: primaryColor,
          ),
          backgroundColor: const Color(0xfff2b1a6),
          dialogBackgroundColor: const Color(0xffffffff),
          indicatorColor: primaryColor,
          hintColor: const Color(0x8a000000),
          errorColor: const Color(0xffd32f2f),
          buttonTheme: const ButtonThemeData(
            textTheme: ButtonTextTheme.accent,
            minWidth: 88,
            height: 48,
            padding: EdgeInsets.only(left: 16, right: 16),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Color(0xff000000),
                width: 0,
                style: BorderStyle.none,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            buttonColor: primaryColor,
            disabledColor: Color(0x61000000),
            highlightColor: Color(0x29000000),
            splashColor: Color(0x1f000000),
            focusColor: Color(0x1f000000),
            hoverColor: Color(0x0a000000),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            contentPadding: EdgeInsets.only(
              top: 12,
              bottom: 12,
              left: 15,
              right: 15,
            ),
          ),
          chipTheme: ChipThemeData(
            backgroundColor: const Color(0x1f000000),
            brightness: Brightness.light,
            deleteIconColor: const Color(0xffdf3c20),
            disabledColor: const Color(0x0c000000),
            labelPadding: const EdgeInsets.only(left: 8, right: 8),
            labelStyle: TextStyle(
              fontSize: 12,
              fontFamily: font,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            padding: const EdgeInsets.all(4),
            secondaryLabelStyle: TextStyle(
              fontSize: 12,
              fontFamily: font,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            secondarySelectedColor: const Color(0x3de5634d),
            selectedColor: const Color(0x3de5634d),
            shape: const StadiumBorder(
              side: BorderSide(
                color: Color(0xff000000),
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
          dialogTheme: const DialogTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(primaryColor))),
          colorScheme: const ColorScheme.light(primary: primaryColor, brightness: Brightness.light, secondary: secondaryColor),
        );

      case "primaryDark":
        return ThemeData(
          primarySwatch: const MaterialColor(4280361249, {
            50: Color(0xfff2f2f2),
            100: Color(0xffe6e6e6),
            200: Color(0xffcccccc),
            300: Color(0xffb3b3b3),
            400: Color(0xff999999),
            500: Color(0xff808080),
            600: Color(0xff666666),
            700: Color(0xff4d4d4d),
            800: Color(0xff333333),
            900: Color(0xff191919)
          }),
          fontFamily: font,
          brightness: Brightness.dark,
          primaryColor: primaryColor,
          primaryColorBrightness: Brightness.dark,
          primaryColorLight: const Color(0xFF8c97d3),
          primaryColorDark: const Color(0xFF2d397f),
          canvasColor: Colors.grey[900],
          scaffoldBackgroundColor: const Color(0xff303030),
          bottomAppBarColor: const Color(0xff424242),
          cardColor: const Color(0xff424242),
          dividerColor: const Color(0x1fffffff),
          highlightColor: const Color(0x40cccccc),
          splashColor: const Color(0x40cccccc),
          selectedRowColor: const Color(0xfff5f5f5),
          unselectedWidgetColor: const Color(0xb3ffffff),
          disabledColor: const Color(0x62ffffff),
          toggleableActiveColor: primaryColor,
          secondaryHeaderColor: const Color(0xff616161),
          textSelectionTheme: const TextSelectionThemeData(
            selectionColor: primaryColor,
            cursorColor: Color(0xFF2d397f),
            selectionHandleColor: primaryColor,
          ),
          backgroundColor: const Color(0xff616161),
          dialogBackgroundColor: const Color(0xff424242),
          indicatorColor: primaryColor,
          hintColor: const Color(0x80ffffff),
          errorColor: const Color(0xffd32f2f),
          appBarTheme: AppBarTheme(
            color: Colors.grey[900],
          ),
          buttonTheme: const ButtonThemeData(
            textTheme: ButtonTextTheme.accent,
            minWidth: 88,
            height: 48,
            padding: EdgeInsets.only(left: 16, right: 16),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Color(0xff000000),
                width: 0,
                style: BorderStyle.none,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            buttonColor: primaryColor,
            disabledColor: Color(0x61ffffff),
            highlightColor: Color(0x29ffffff),
            splashColor: Color(0x1fffffff),
            focusColor: Color(0x1fffffff),
            hoverColor: Color(0x0affffff),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            contentPadding: EdgeInsets.only(
              top: 12,
              bottom: 12,
              left: 15,
              right: 15,
            ),
          ),
          chipTheme: ChipThemeData(
            backgroundColor: const Color(0x1fffffff),
            brightness: Brightness.dark,
            deleteIconColor: const Color(0xdeffffff),
            disabledColor: const Color(0x0cffffff),
            labelPadding: const EdgeInsets.only(left: 8, right: 8),
            labelStyle: TextStyle(
              fontSize: 12,
              fontFamily: font,
              color: const Color(0xb3ffffff),
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            padding: const EdgeInsets.all(4),
            secondaryLabelStyle: TextStyle(
              fontSize: 12,
              fontFamily: font,
              color: const Color(0xb3ffffff),
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            secondarySelectedColor: const Color(0x3d212121),
            selectedColor: const Color(0x3dffffff),
            shape: const StadiumBorder(
              side: BorderSide(
                color: Color(0xff000000),
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
          dialogTheme: const DialogTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(primaryColor))),
          colorScheme: const ColorScheme.light(primary: primaryColor, brightness: Brightness.dark, secondary: secondaryColor),
        );

      default:
        return ThemeData(
          primarySwatch: const MaterialColor(4294750262, {
            50: Color(0xFFd9dcf0),
            100: Color(0xFFb3b9e1),
            200: Color(0xFF8c97d3),
            300: Color(0xFF6674c4),
            400: primaryColor,
            500: Color(0xFF3a49a3),
            600: Color(0xFF2d397f),
            700: Color(0xFF20295b),
            800: Color(0xFF131836),
            900: Color(0xFF060812)
          }),
          fontFamily: font,
          brightness: Brightness.light,
          primaryColor: primaryColor,
          primaryColorBrightness: Brightness.dark,
          primaryColorLight: const Color(0xFF8c97d3),
          primaryColorDark: const Color(0xFF2d397f),
          canvasColor: const Color(0xffffffff),
          scaffoldBackgroundColor: const Color(0xFFF1F2F6),
          bottomAppBarColor: const Color(0xffffffff),
          cardColor: const Color(0xffffffff),
          dividerColor: const Color(0x1f000000),
          highlightColor: const Color(0x66bcbcbc),
          splashColor: const Color(0x66c8c8c8),
          selectedRowColor: const Color(0xfff5f5f5),
          unselectedWidgetColor: const Color(0x8a000000),
          disabledColor: const Color(0x61000000),
          toggleableActiveColor: primaryColor,
          secondaryHeaderColor: const Color(0xfffcebe9),
          textSelectionTheme: const TextSelectionThemeData(
            selectionColor: primaryColor,
            cursorColor: Color(0xFF2d397f),
            selectionHandleColor: primaryColor,
          ),
          backgroundColor: const Color(0xfff2b1a6),
          dialogBackgroundColor: const Color(0xffffffff),
          indicatorColor: primaryColor,
          hintColor: const Color(0x8a000000),
          errorColor: const Color(0xffd32f2f),
          buttonTheme: const ButtonThemeData(
            textTheme: ButtonTextTheme.accent,
            minWidth: 88,
            height: 48,
            padding: EdgeInsets.only(left: 16, right: 16),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Color(0xff000000),
                width: 0,
                style: BorderStyle.none,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            buttonColor: primaryColor,
            disabledColor: Color(0x61000000),
            highlightColor: Color(0x29000000),
            splashColor: Color(0x1f000000),
            focusColor: Color(0x1f000000),
            hoverColor: Color(0x0a000000),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            contentPadding: EdgeInsets.only(
              top: 12,
              bottom: 12,
              left: 15,
              right: 15,
            ),
          ),
          chipTheme: ChipThemeData(
            backgroundColor: const Color(0x1f000000),
            brightness: Brightness.light,
            deleteIconColor: const Color(0xffdf3c20),
            disabledColor: const Color(0x0c000000),
            labelPadding: const EdgeInsets.only(left: 8, right: 8),
            labelStyle: TextStyle(
              fontSize: 12,
              fontFamily: font,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            padding: const EdgeInsets.all(4),
            secondaryLabelStyle: TextStyle(
              fontSize: 12,
              fontFamily: font,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            secondarySelectedColor: const Color(0x3de5634d),
            selectedColor: const Color(0x3de5634d),
            shape: const StadiumBorder(
              side: BorderSide(
                color: Color(0xff000000),
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
          dialogTheme: const DialogTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(primaryColor))),
          colorScheme: const ColorScheme.light(primary: primaryColor, brightness: Brightness.light, secondary: secondaryColor),
        );
    }
  }

  ///Singleton factory
  static final ThemeCollection _instance = ThemeCollection._internal();

  factory ThemeCollection() {
    return _instance;
  }

  ThemeCollection._internal();
}
