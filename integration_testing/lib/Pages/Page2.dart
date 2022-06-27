import 'package:flutter/material.dart';

class Pagina2 extends StatefulWidget {
  Pagina2({Key? key}) : super(key: key);

  @override
  State<Pagina2> createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          key: const ValueKey("Button2"),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
            textStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 14, color: Colors.white)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
          onPressed: () {},
          child: const Text('Press'),
        ),
      ),
    );
  }
}
