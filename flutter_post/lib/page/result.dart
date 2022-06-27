import 'package:flutter/material.dart';
import 'package:flutter_post/object/getResponse.dart';

class ResultPage extends StatefulWidget {
  String statusCode;
  String bodyCode;

  ResultPage({Key? key, required this.statusCode, required this.bodyCode})
      : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "Risultato della richiesta: ",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
