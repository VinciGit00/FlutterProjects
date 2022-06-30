import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class URL extends StatefulWidget {
  TextEditingController urlController = TextEditingController();
  String operation;
  URL({Key? key, required this.urlController, required this.operation})
      : super(key: key);

  @override
  State<URL> createState() => _URLState();
}

class _URLState extends State<URL> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            DropdownButton<String>(
              items: [
                const DropdownMenuItem<String>(
                  value: "GET",
                  child: Center(child: const Text("GET")),
                ),
                const DropdownMenuItem<String>(
                  value: "POST",
                  child: Center(child: const Text("POST")),
                ),
              ],
              onChanged: (_value) => {
                print(_value.toString()),
                setState(() {
                  widget.operation = _value.toString();
                })
              },
              hint: const Text("Operation"),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                obscureText: false,
                controller: widget.urlController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'URL',
                ),
              ),
            )),
          ],
        ),
      ],
    );
  }
}
