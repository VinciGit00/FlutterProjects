import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaginaClaudia extends StatefulWidget {
  PaginaClaudia({Key? key}) : super(key: key);

  @override
  State<PaginaClaudia> createState() => _PaginaClaudiaState();
}

class _PaginaClaudiaState extends State<PaginaClaudia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orsetta 🐻"),
      ),
      body: const Center(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://www.picuki.com/profile/claudia_avizzano',
        ),
      ),
    );
  }
}
