import 'package:flutter/material.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class MyHomePage extends StatefulWidget {
  // const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

TextEditingController _pass = TextEditingController();

final _key = encrypt.Key.fromLength(32);
final _iv = encrypt.IV.fromLength(8);

final _encrypter = encrypt.Encrypter(encrypt.AES(_key));

late final _encrypted, _decrypted;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Password Encrypt"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
            child: TextField(
              controller: _pass,
              decoration: InputDecoration(
                hintText: 'Password',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.blue)),
                isDense: true, // Added this
                contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              ),
              cursorColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: ElevatedButton(
              onPressed: () {
                print("INIZIO FUNZIONE DI ENCRYPT");
                encrypt();
              },
              child: const Text("Encrypt"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print("INIZIO FUNZIONE DI DECRYPT");
              decrypt();
            },
            child: const Text("Decrypt"),
          ),
        ],
      ),
    );
  }

// method to Encrypt String Password
  void encrypt() async {
    //Prendo la password
    final _password = _pass.text;
    _encrypted = _encrypter.encrypt(_password, iv: _iv);
    print(_encrypted.base64);
  }

// method to decrypt String Password
  void decrypt() async {
    _decrypted = _encrypter.decrypt(_encrypted, iv: _iv);
    print(_decrypted);
  }
}
