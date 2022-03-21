import 'package:flutter/material.dart';
import 'GraficoCircolare.dart';
import 'GraficoCircolare2.dart';
import 'GraficoCircolare3.dart';
import 'Istogramma.dart';
import 'Pyramid.dart';
import 'LineChart.dart';
import 'Spline.dart';
import 'BubbleChart.dart';
import 'CandleChart.dart';
import 'Normale.dart';
import 'AreaChart.dart';
import '3Grafici.dart';

class PaginaTemporanea extends StatelessWidget {
  const PaginaTemporanea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 4.0,
          //backgroundColor: Color(0xFFF6F7FF),
          leading: Container(),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.settings,
                //color: Colors.blue,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                child: ElevatedButton(
                  child: const Text('Grafico circolare'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GraficoCircolare()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Grafico circolare bucato'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GraficoCircolare2()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: const Text('Grafico radiale'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GraficoCircolare3()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Istogramma'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Istogramma()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: const Text('Pyramid'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pyramid()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: ElevatedButton(
                child: const Text('LineChart'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Linechart()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                child: const Text('Spline'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Spline()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: ElevatedButton(
                child: const Text(' 3 Spline insieme'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => treGrafici()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                child: const Text('Bubble chart'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BubbleChart()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: ElevatedButton(
                child: const Text('Candle chart'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CandleChart()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: const Text('Normale'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Normale()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: ElevatedButton(
                child: const Text('Area chart'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AreaChart()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
