import 'package:flutter/material.dart';
import 'package:flutter_post/logic/sendrequestes.dart';
import 'package:flutter_post/object/request.dart';
import 'result.dart';
import 'HalfPages/Url.dart';
import 'HalfPages/Header.dart';
import 'HalfPages/Params.dart';
import 'HalfPages/Authorization.dart';
import 'HalfPages/Body.dart';
import 'HalfPages/Operation.dart';

class Homepage extends StatefulWidget {
  String title;
  Homepage({Key? key, required this.title}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //texteditingController for textfield
  String operation = "GET";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            actions: [
              IconButton(
                icon: const Icon(Icons.send),
                color: Colors.white,
                onPressed: () {
                  RequestToSend requestToSend =
                      RequestToSend("", "", "", "", "");
                  Future<String> result;
                  switch (operation) {
                    case "GET":
                      result = getData(requestToSend);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(result: result),
                        ),
                      );
                      break;
                    case "POST":
                      result = postData(requestToSend);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(result: result),
                        ),
                      );
                      break;
                  }
                },
              ),
            ],
            bottom: TabBar(
              tabs: [
                const Tab(icon: const Icon(Icons.home)),
                const Tab(icon: const Icon(Icons.directions_transit)),
                const Tab(icon: const Icon(Icons.directions_bike)),
                const Tab(icon: const Icon(Icons.home)),
                const Tab(icon: const Icon(Icons.directions_transit)),
                const Tab(icon: const Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              URL(),
              Header(),
              Params(),
              Operation(),
              Body(),
              Authorization(),
            ],
          ),
        ),
      ),
    );
  }
}
