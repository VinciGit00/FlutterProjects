import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  Future<String> result;
  ResultPage({Key? key, required this.result}) : super(key: key);

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
