import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Operation extends StatefulWidget {
  TextEditingController OperationController = TextEditingController();
  Operation({Key? key, required this.OperationController}) : super(key: key);

  @override
  State<Operation> createState() => _OperationState();
}

class _OperationState extends State<Operation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: TextField(
            obscureText: false,
            controller: widget.OperationController,
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
