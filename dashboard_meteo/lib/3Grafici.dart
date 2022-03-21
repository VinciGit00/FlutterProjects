import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class treGrafici extends StatefulWidget {
  List<List<dynamic>> dataset;
  treGrafici({Key? key, required this.dataset}) : super(key: key);

  @override
  State<treGrafici> createState() => _treGraficiState();
}

class _treGraficiState extends State<treGrafici> {
  late TooltipBehavior _tooltipBehavior1;
  late TooltipBehavior _tooltipBehavior2;
  late TooltipBehavior _tooltipBehavior3;
  late MarkerSettings _markerSettings;

  @override
  void initState() {
    super.initState();
    _tooltipBehavior1 = TooltipBehavior(enable: true, header: "");
    _tooltipBehavior2 = TooltipBehavior(enable: true, header: "");
    _tooltipBehavior3 = TooltipBehavior(enable: true, header: "");
    _markerSettings = MarkerSettings(isVisible: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child: SfCartesianChart(
                      title: ChartTitle(text: "Spline 1"),
                      tooltipBehavior: _tooltipBehavior1,
                      palette: <Color>[
                    Colors.red
                  ],
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
                  ])),
              Container(
                  child: SfCartesianChart(
                      title: ChartTitle(text: "Spline 2"),
                      palette: <Color>[Colors.green],
                      tooltipBehavior: _tooltipBehavior2,
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
                      ])),
              Container(
                  child: SfCartesianChart(
                      title: ChartTitle(text: "Spline 3"),
                      tooltipBehavior: _tooltipBehavior3,
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
                  ])),
            ],
          ),
        ));
  }
}
