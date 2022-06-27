import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Operation extends StatefulWidget {
  Operation({Key? key}) : super(key: key);

  @override
  State<Operation> createState() => _OperationState();
}

class _OperationState extends State<Operation> {
  TextEditingController OperationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
