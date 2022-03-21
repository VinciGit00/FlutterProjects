import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:csv/csv.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:convert' show utf8;
import 'PaginaLinechart.dart';
import 'PaginaSpline.dart';
import '3Grafici.dart';

class prendiFile extends StatefulWidget {
  prendiFile({Key? key}) : super(key: key);

  @override
  State<prendiFile> createState() => _prendiFileState();
}

class _prendiFileState extends State<prendiFile> {
  late List<List<dynamic>> rowsAsListOfValues;

  @override
  void initState() {
    // TODO: implement initState
    rowsAsListOfValues = [[]];
    super.initState();
  }

  bool lucchetto = false;

  Future<void> _importCSV() async {
    //Pick file
    FilePickerResult? csvFile = await FilePicker.platform.pickFiles(
        allowedExtensions: ['csv'],
        type: FileType.custom,
        allowMultiple: false);
    if (csvFile != null) {
      //decode bytes back to utf8
      final bytes = utf8.decode(List.from(csvFile.files[0].bytes!.toList()));
      //from the csv plugin
      rowsAsListOfValues = const CsvToListConverter().convert(bytes);
      print(rowsAsListOfValues);
      final snackBar = SnackBar(
        content: const Text('Dataset inserito correttamente'),
        action: SnackBarAction(
          label: 'Chiudi il banner',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.upload),
              tooltip: 'Carica un file nuovo',
              onPressed: () async {
                await _importCSV();

                lucchetto = true;
              },
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Theme.of(context).secondaryHeaderColor,
          child: ListView(
            children: [
              buildMenuItem(
                  text: 'Linechart',
                  icon: Icons.graphic_eq,
                  onClicked: () {
                    if (lucchetto == true) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LineChart(
                          dataset: rowsAsListOfValues,
                        ),
                      ));
                    } else {
                      final snackBar = SnackBar(
                        content: const Text(
                            'Devi inserire il dataset prima di proseguire!'),
                        action: SnackBarAction(
                          label: 'Chiudi il banner',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }

                    const Text('Show SnackBar');
                  }),
              buildMenuItem(
                  text: 'Spline',
                  icon: Icons.graphic_eq,
                  onClicked: () {
                    if (lucchetto == true) {
                      print(rowsAsListOfValues);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            TableLayout(dataset: rowsAsListOfValues),
                      ));
                    } else {
                      final snackBar = SnackBar(
                        content: const Text(
                            'Devi inserire il dataset prima di proseguire!'),
                        action: SnackBarAction(
                          label: 'Chiudi il banner',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }

                    const Text('Show SnackBar');
                  }),
              buildMenuItem(
                  text: '3 spline in contemporanea',
                  icon: Icons.graphic_eq,
                  onClicked: () {
                    if (lucchetto == true) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => treGrafici(
                          dataset: rowsAsListOfValues,
                        ),
                      ));
                    } else {
                      final snackBar = SnackBar(
                        content: const Text(
                            'Devi inserire il dataset prima di proseguire!'),
                        action: SnackBarAction(
                          label: 'Chiudi il banner',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }

                    const Text('Show SnackBar');
                  }),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Center(
                child: ElevatedButton(
                    child: const Text("OpenFile"),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                    ),
                    onPressed: () async {
                      await _importCSV();
                      lucchetto = true;
                    }),
              ),
            ),
          ],
        ));
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.white;

  return ListTile(
    leading: Icon(
      icon,
      color: color,
    ),
    title: Text(text, style: TextStyle(color: color)),
    onTap: onClicked,
  );
}
