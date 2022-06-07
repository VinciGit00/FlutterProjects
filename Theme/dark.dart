import 'package:flutter/material.dart';

final ThemeData dark = ThemeData(
  brightness: Brightness.dark,
  buttonColor: const Color(0xFFEE4540),
  appBarTheme: const AppBarTheme(
    color: Color(0xFFEE4540),
  ),
  accentColor: const Color(0xFF510A32),
  primaryColor: const Color(0xFF801336),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.deepPurple, //  <-- dark color
    textTheme:
        ButtonTextTheme.primary, //  <-- this auto selects the right color
  ),
);
