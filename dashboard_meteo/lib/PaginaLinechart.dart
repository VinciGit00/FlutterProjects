import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChart extends StatefulWidget {
  List<List<dynamic>> dataset;
  LineChart({Key? key, required this.dataset}) : super(key: key);

  @override
  State<LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  final TooltipBehavior _tooltipBehavior =
      TooltipBehavior(enable: true, header: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: SfCartesianChart(
            tooltipBehavior: _tooltipBehavior,
            series: <ChartSeries>[
              LineSeries<List<dynamic>, double>(
                dataSource: widget.dataset,
                xValueMapper: (List<dynamic> sales, _) => sales[0],
                yValueMapper: (List<dynamic> sales, _) => sales[1],
                markerSettings: const MarkerSettings(
                    isVisible: true, shape: DataMarkerType.circle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
