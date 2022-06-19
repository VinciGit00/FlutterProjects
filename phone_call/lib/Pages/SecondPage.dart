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

Future<void> calLoop(String number) async {
  int time = 40;

  while (true) {
    await FlutterPhoneDirectCaller.callNumber(number);
    //sleep(Duration(seconds: time));

    //if (time > 20) time -= 5;
  }
}

class _secondPageState extends State<secondPage> {
  void initState() {
    //calLoop(widget.numero.number.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        // future: Future.delayed(const Duration(seconds: 2)),
        future: calLoop(widget.numero.number),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            //calLoop(widget.numero.number.toString());
            return Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "I'm making the phone call",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
            );
          } else {
            return Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "I'm making the phone call",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
            );
          }
        },
      ),
    );
  }
}
