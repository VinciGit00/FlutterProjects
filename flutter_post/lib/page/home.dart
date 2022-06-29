import 'package:flutter/material.dart';
import 'package:flutter_post/logic/sendrequestes.dart';
import 'package:flutter_post/object/PostResponse.dart';
import 'package:flutter_post/object/request.dart';
import 'result.dart';
import 'HalfPages/Url.dart';
import 'HalfPages/Header.dart';
import 'HalfPages/Body.dart';
import 'HalfPages/Operation.dart';
import 'package:flutter_post/object/getResponse.dart';
import 'package:flutter_post/project providers/data_provider.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  String title;
  Homepage({Key? key, required this.title}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //texteditingController for textfield
  String operation = "GET";
  TextEditingController _urlController = TextEditingController();
  TextEditingController _headerController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _KeyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            actions: [
              IconButton(
                icon: const Icon(Icons.send),
                color: Colors.white,
                onPressed: () async {
                  RequestToSend requestToSend = RequestToSend(
                    "",
                    "",
                    "",
                    "",
                    "",
                  );

                  //Va bene così?
                  Provider.of<dataProvider>(context, listen: false).addLink("");
                  switch (operation) {
                    case "GET":
                      //You should use the keyword await
                      GetResponse result = await getData(requestToSend);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(
                              statusCode: result.statuscode,
                              bodyCode: result.body),
                        ),
                      );
                      break;
                    case "POST":
                      PostResp result = await postData(requestToSend);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(
                              statusCode: result.statuscode,
                              bodyCode: result.body),
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
                const Tab(icon: const Text("Header")),
                const Tab(icon: const Text("Body")),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              URL(
                urlController: _urlController,
              ),
              Header(
                KeyController: _KeyController,
                HeaderController: _headerController,
              ),
              Body(
                BodyController: _bodyController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
