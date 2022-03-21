import 'package:flutter/material.dart';

final ThemeData dark = new ThemeData(
  //brightness: Brightness.dark,

  //primarySwatch: Colors.cyan,
  primaryColor: Colors.cyan,
  secondaryHeaderColor: Colors.grey[850],
  canvasColor: Colors.grey[850],
  //backgroundColor: Colors.pink,
  textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black)),
  inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        color: Colors.cyan,
      ),
      fillColor: Colors.white),
  accentColor: Colors.cyan,
  appBarTheme: AppBarTheme(
    color: Colors.cyan,
  ),
  hintColor: Colors.white,
  iconTheme: new IconThemeData(color: Colors.blue, opacity: 1.0),
);

final ThemeData white = new ThemeData(
  primaryColor: Colors.blue,
  secondaryHeaderColor: Colors.blue,
  canvasColor: Colors.white,
  backgroundColor: Colors.yellow,
  textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black)),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: Colors.orange,
    ),
  ),
  accentColor: Colors.blue,
  appBarTheme: AppBarTheme(
    color: Colors.blue,
  ),
  hintColor: Colors.black,
);
