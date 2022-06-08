import 'package:flutter/material.dart';

class Styles {
  static ThemeData appTheme = ThemeData(
    primaryColor: Colors.black87,
    fontFamily: 'Poppins',
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black87,
      titleTextStyle: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w500,
        fontSize: 18,
        fontFamily: 'Poppins',
      ),
      actionsIconTheme: IconThemeData(color: Colors.black87),
    ),
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        backgroundColor: Colors.black87,
        primary: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        textStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 15,
          fontFamily: 'Poppins',
        ),
      ),
    ),
  );
}
