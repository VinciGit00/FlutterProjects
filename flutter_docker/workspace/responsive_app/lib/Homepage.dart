import 'package:flutter/material.dart';
import 'package:responsive_app/responsive/responsive_layout.dart';
import 'responsive/mobile_body.dart';
import 'responsive/desktop_body.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    /* return Scaffold(
      backgroundColor:
          currentWidth < 600 ? Colors.deepPurple[300] : Colors.green[300]!,
      body: Center(child: Text(currentWidth.toString())),
    );*/
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
