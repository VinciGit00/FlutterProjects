import 'package:flutter/material.dart';
import 'package:flutter_post/object/request.dart';

//This is the provider for the data
class dataProvider with ChangeNotifier {
  late RequestToSend r;

  //Methods
  void createObject(RequestToSend request) {
    r = request;
  }

  void addLink(String link) {
    r.addLink(link);
  }

  void addOperation(String operation) {
    r.addOperation(operation);
  }

  void addHeaderName(String headerName) {
    r.addHeaderName(headerName);
  }

  void addHeader(String header) {
    r.addHeader(header);
  }

  void addbody(String body) {
    r.addbody(body);
  }
}
