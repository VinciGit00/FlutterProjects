import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class treGrafici extends StatefulWidget {
  treGrafici({Key? key}) : super(key: key);

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
    _tooltipBehavior1 = TooltipBehavior(enable: true, header: "nome");
    _tooltipBehavior2 = TooltipBehavior(enable: true, header: "nome");
    _tooltipBehavior3 = TooltipBehavior(enable: true, header: "nome");

    _markerSettings = MarkerSettings(isVisible: true);
  }

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(DateTime(2010, 2, 1), 35),
      ChartData(DateTime(2011, 1, 4), 28),
      ChartData(DateTime(2012, 1, 4), 34),
      ChartData(DateTime(2014, 1, 4), 40),
      ChartData(DateTime(2016, 1, 4), 32),
    ];
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child: SfCartesianChart(
                      title: ChartTitle(text: "Spline 1"),
                      tooltipBehavior: _tooltipBehavior1,
                      primaryXAxis: DateTimeAxis(),
                      palette: <Color>[
                    Colors.red
                  ],
                      series: <ChartSeries>[
                    SplineSeries<ChartData, DateTime>(
                      dataSource: chartData,
                      // Type of spline
                      splineType: SplineType.cardinal,
                      cardinalSplineTension: 0.9,
                      xValueMapper: (ChartData sales, _) => sales.year,
                      yValueMapper: (ChartData sales, _) => sales.sales,
                      markerSettings: const MarkerSettings(
                          isVisible: true, shape: DataMarkerType.circle),
                    ),
                  ])),
              Container(
                  child: SfCartesianChart(
                      title: ChartTitle(text: "Spline 2"),
                      palette: <Color>[Colors.green],
                      tooltipBehavior: _tooltipBehavior2,
                      primaryXAxis: DateTimeAxis(),
                      series: <ChartSeries>[
                        SplineSeries<ChartData, DateTime>(
                          dataSource: chartData,
                          // Type of spline
                          splineType: SplineType.cardinal,
                          cardinalSplineTension: 0.9,
                          xValueMapper: (ChartData sales, _) => sales.year,
                          yValueMapper: (ChartData sales, _) => sales.sales,
                          markerSettings: const MarkerSettings(
                              isVisible: true, shape: DataMarkerType.circle),
                        ),
                      ])),
              Container(
                  child: SfCartesianChart(
                      title: ChartTitle(text: "Spline 3"),
                      tooltipBehavior: _tooltipBehavior3,
                      primaryXAxis: DateTimeAxis(),
                      series: <ChartSeries>[
                    SplineSeries<ChartData, DateTime>(
                      dataSource: chartData,
                      // Type of spline
                      splineType: SplineType.cardinal,
                      cardinalSplineTension: 0.9,
                      xValueMapper: (ChartData sales, _) => sales.year,
                      yValueMapper: (ChartData sales, _) => sales.sales,
                      markerSettings: const MarkerSettings(
                          isVisible: true, shape: DataMarkerType.circle),
                    ),
                  ])),
            ],
          ),
        ));
  }
}

class ChartData {
  ChartData(this.year, this.sales);
  final DateTime year;
  final double sales;
}
