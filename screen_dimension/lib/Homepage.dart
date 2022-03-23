import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeigth = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Text(
          currentWidth.toString() + "x" + currentHeigth.toString(),
          style: const TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
