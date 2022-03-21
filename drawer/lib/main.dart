import 'package:flutter/material.dart';
import 'package:drawer/theme/theme.dart';
import 'navigation_drawer_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer',
      themeMode: ThemeMode.system,
      theme: white,
      darkTheme: dark,
      home: NavigationDrawerWidget(),
    );
  }
}
