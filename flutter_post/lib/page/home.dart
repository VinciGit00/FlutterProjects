import 'package:flutter/material.dart';
import 'package:flutter_post/logic/sendrequestes.dart';
import 'package:flutter_post/object/PostResponse.dart';
import 'package:flutter_post/object/request.dart';
import 'result.dart';
import 'HalfPages/Url.dart';
import 'HalfPages/Header.dart';
import 'HalfPages/Body.dart';
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
  //Boolean for charging the operation
  bool _isLoading = false;

  //texteditingController for textfield
  String operation = "GET";

  TextEditingController _urlController = TextEditingController();
  TextEditingController _KeyController = TextEditingController();
  TextEditingController _headerController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            actions: [
              _isLoading
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: Colors.red,
                      ),
                    )
                  : IconButton(
                      icon: const Icon(Icons.send),
                      color: Colors.white,
                      onPressed: () async {
                        if (_urlController.text != "") {
                          setState(() {
                            _isLoading = true;
                          });
                          RequestToSend requestToSend = RequestToSend(
                            _urlController.text,
                            operation,
                            _KeyController.text,
                            _headerController.text,
                            _bodyController.text,
                          );

                          Provider.of<dataProvider>(context, listen: false)
                              .createObject(requestToSend);
                          switch (operation) {
                            case "GET":
                              //You should use the keyword await
                              GetResponse result =
                                  await getData(dataProvider().r);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResultPage(
                                      statusCode: result.statuscode,
                                      bodyCode: result.body),
                                ),
                              );
                              _isLoading = false;
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
                              _isLoading = false;
                              break;
                          }
                        } else {
                          const snackBar = SnackBar(
                            content: Text(
                                'Devi inserire i dati prima di fare una POST!'),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                operation: operation,
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
