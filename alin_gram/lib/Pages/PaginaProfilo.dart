import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:alin_gram/Tiles/Person.dart';

class PaginaProfilo extends StatefulWidget {
  Person personProfile;
  PaginaProfilo({Key? key, required this.personProfile}) : super(key: key);

  @override
  State<PaginaProfilo> createState() => _PaginaProfiloState();
}

class _PaginaProfiloState extends State<PaginaProfilo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.personProfile.name),
      ),
      body: Center(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: widget.personProfile.linkIG,
        ),
      ),
    );
  }
}
