import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TableLayout extends StatefulWidget {
  // Lista dove ci sonon tutti i dati
  List<List<dynamic>> dataset = [];
  TableLayout({Key? key, required this.dataset}) : super(key: key);

  @override
  _TableLayoutState createState() => _TableLayoutState();
}

class _TableLayoutState extends State<TableLayout> {
  final TooltipBehavior _tooltipBehavior =
      TooltipBehavior(enable: true, header: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              child: SfCartesianChart(
                tooltipBehavior: _tooltipBehavior,
                series: <ChartSeries>[
                  SplineSeries<List<dynamic>, double>(
                    dataSource: widget.dataset,

                    // Type of spline
                    splineType: SplineType.cardinal,
                    cardinalSplineTension: 0.9,
                    xValueMapper: (List<dynamic> sales, _) => sales[0],
                    yValueMapper: (List<dynamic> sales, _) => sales[1],
                    markerSettings: const MarkerSettings(
                        isVisible: true, shape: DataMarkerType.circle),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
