import 'package:flutter/material.dart';
import 'prendifile.dart';
import 'themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather app',
      themeMode: ThemeMode.system,
      theme: white,
      darkTheme: dark,
      home: prendiFile(),
    );
  }
}
