import 'package:flutter/material.dart';

class URL extends StatefulWidget {
  URL({Key? key}) : super(key: key);

  @override
  State<URL> createState() => _URLState();
}

class _URLState extends State<URL> {
  TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: TextField(
            obscureText: false,
            controller: urlController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'URL',
            ),
          ),
        )
      ],
    );
  }
}
