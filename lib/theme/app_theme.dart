import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.deepPurple;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Primary color
    primaryColor: primary,
    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0.5,
    ),
    // TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Primary color
    primaryColor: primary,
    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0.5,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}