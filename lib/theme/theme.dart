import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.w600,
      color: Colors.red,
    ),
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      fontSize: 20,
      color: Colors.white,
    ),
    centerTitle: true,
    color: Colors.red,
    elevation: 25,
    shadowColor: Colors.pink,
  ),
  colorScheme: ColorScheme.fromSeed(
    primary: Colors.orangeAccent,
    seedColor: Colors.orange,
  ),
);

ThemeData darkMode = ThemeData(
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      fontSize: 20,
      color: Colors.white,
    ),
    centerTitle: true,
    color: Colors.black,
    elevation: 25,
    // shadowColor: Colors.pink,
  ),
  colorScheme: ColorScheme.fromSeed(
    primary: Colors.grey.shade700,
    seedColor: Colors.black,
  ),
);
