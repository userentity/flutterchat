import 'package:flutter/material.dart';

import '../const/ui.dart';
import '../utils/margin.dart';

class ChatTheme {
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: UI.blueColor,
    scaffoldBackgroundColor: UI.darkBcgColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: UI.darkBcgMediumColor,
      // elevation: 0,
      titleTextStyle: TextStyle(
        color: UI.darkTitleColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: IconThemeData(
        color: UI.blueColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: UI.darkBcgMediumColor,
      selectedIconTheme: const IconThemeData(
        color: UI.whiteColor,
      ),
      unselectedIconTheme: IconThemeData(
        color: UI.darkTextColor.withOpacity(0.7),
      ),
      selectedItemColor: UI.whiteColor,
      unselectedItemColor: UI.darkTextColor.withOpacity(0.7),
      selectedLabelStyle: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
      ),
    ),
    dialogTheme: const DialogTheme(
      // backgroundColor: Const.secondBcgColor,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w900,
      ),
    ),
    // fontFamily: GoogleFonts.anaheim().fontFamily,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: UI.darkTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
      bodyText2: TextStyle(
        color: UI.darkTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
      headline1: TextStyle(
        color: UI.darkTitleColor,
        fontWeight: FontWeight.w600,
        fontSize: 32,
      ),
      headline2: TextStyle(
        color: UI.darkTitleColor,
        fontWeight: FontWeight.w600,
        fontSize: 23,
      ),
    ),
    iconTheme: const IconThemeData(
      color: UI.blueColor,
    ),
    primaryIconTheme: const IconThemeData(
      color: UI.blueColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: UI.darkBcgMediumColor,
      contentPadding:
          const Margin.only(left: 15, right: 15, top: 15, bottom: 15),
      suffixIconColor: UI.blueColor,
      suffixStyle: const TextStyle(
        color: UI.blueColor,
      ),
      labelStyle: const TextStyle(
        color: UI.darkTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(
          width: 1,
          style: BorderStyle.solid,
          color: UI.darkBcgMediumColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(
          width: 1,
          style: BorderStyle.solid,
          color: UI.blueColor,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(
          width: 1,
          style: BorderStyle.solid,
          color: UI.blueBorderColor,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(
          width: 1,
          style: BorderStyle.solid,
          color: UI.redColor,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(
          width: 1,
          style: BorderStyle.solid,
          color: UI.darkBcgMediumColor,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        textStyle: const TextStyle(
          color: UI.blueColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: UI.blueColor,
        minimumSize: const Size(double.infinity, 56),
        maximumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: UI.whiteColor,
        ),
      ),
    ),
  );
}
