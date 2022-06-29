import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class URL extends StatefulWidget {
  TextEditingController urlController = TextEditingController();

  URL({Key? key, required this.urlController}) : super(key: key);

  @override
  State<URL> createState() => _URLState();
}

class _URLState extends State<URL> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: TextField(
            obscureText: false,
            controller: widget.urlController,
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
