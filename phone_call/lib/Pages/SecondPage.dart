import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'dart:io';
import 'package:phone_call/Element/Number.dart';

class secondPage extends StatefulWidget {
  Number numero;
  secondPage({Key? key, required this.numero}) : super(key: key);

  @override
  State<secondPage> createState() => _secondPageState();
}

void calLoop(String number) {
  int time = 40;

  sleep(const Duration(seconds: 10));
  while (true) {
    FlutterPhoneDirectCaller.callNumber(number);
    sleep(Duration(seconds: time));

    if (time > 20) time -= 5;
  }
}

class _secondPageState extends State<secondPage> {
  void initState() {
    calLoop(widget.numero.number.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                "I'm making the phone call",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "Calling ${widget.numero.number.toString()} ",
                style: const TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
