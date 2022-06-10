import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Type { yes, no }

class _MyHomePageState extends State<MyHomePage> {
  Type MyTipe = Type.yes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 25, bottom: 25),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
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
                onPressed: () {},
                child: const Text('Make the phone call'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
