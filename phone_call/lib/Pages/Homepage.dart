import 'package:flutter/material.dart';
import 'package:phone_call/Element/Number.dart';
import 'SecondPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Type { yes, no }

class _MyHomePageState extends State<MyHomePage> {
  Type MyTipe = Type.yes;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 25, bottom: 25),
              child: TextField(
                obscureText: false,
                controller: _controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Insert the phone number',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            const Text(
              "Private number?",
              style: TextStyle(fontSize: 25),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  title: const Text("Yes"),
                  leading: Radio<Type>(
                    value: Type.yes,
                    groupValue: MyTipe,
                    onChanged: (Type? type) {
                      setState(
                        () {
                          MyTipe = type!;
                        },
                      );
                    },
                  ),
                ),
                ListTile(
                  title: const Text("No"),
                  leading: Radio<Type>(
                    value: Type.no,
                    groupValue: MyTipe,
                    onChanged: (Type? type) {
                      setState(
                        () {
                          MyTipe = type!;
                        },
                      );
                    },
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
              ),
              child: ElevatedButton(
                //style: style,
                onPressed: () {
                  print("-------------------------------------------");
                  print(_controller.text);
                  print(MyTipe.toString());
                  print("-------------------------------------------");
                  if (_controller.text.length == 10) {
                    late Number e;
                    if (MyTipe.toString() == "Type.yes") {
                      e = Number(MyTipe.toString(), "#31#${_controller.text}");
                    } else {
                      e = Number(MyTipe.toString(), _controller.text);
                    }
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => secondPage(numero: e)));
                  } else {
                    final snackBar = SnackBar(
                      content: const Text(
                          'You should insert a 10 digit number for making the phone call'),
                      action: SnackBarAction(
                        label: 'Chiudi il banner',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: const Text('Make the phone call'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
