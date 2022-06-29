import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Header extends StatefulWidget {
  TextEditingController HeaderController = TextEditingController();
  TextEditingController KeyController = TextEditingController();

  Header(
      {Key? key, required this.HeaderController, required this.KeyController})
      : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: 40.0,
                  child: TextField(
                    obscureText: false,
                    controller: widget.HeaderController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Key',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  obscureText: false,
                  controller: widget.KeyController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Value',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
