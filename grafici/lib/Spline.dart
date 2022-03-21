import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Spline extends StatefulWidget {
  Spline({Key? key}) : super(key: key);

  @override
  State<Spline> createState() => _SplineState();
}

class _SplineState extends State<Spline> {
  late TooltipBehavior _tooltipBehavior;
  late MarkerSettings _markerSettings;

  @override
  void initState() {
    super.initState();
    _tooltipBehavior = TooltipBehavior(enable: true, header: "nome");
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
        body: Center(
            child: Container(
                child: SfCartesianChart(
                    title: ChartTitle(text: "Titolo della spline"),
                    tooltipBehavior: _tooltipBehavior,
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
            ]))));
  }
}

class ChartData {
  ChartData(this.year, this.sales);
  final DateTime year;
  final double sales;
}
