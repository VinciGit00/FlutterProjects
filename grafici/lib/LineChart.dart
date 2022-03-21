import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class Linechart extends StatefulWidget {
  Linechart({Key? key}) : super(key: key);

  @override
  State<Linechart> createState() => _LinechartState();
}

class _LinechartState extends State<Linechart> {
  late List<ChartData> _ChartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    super.initState();
    _tooltipBehavior = TooltipBehavior(enable: true, header: "nome");
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
            title: ChartTitle(text: "Titolo dello linechart"),
            tooltipBehavior: _tooltipBehavior,
            primaryXAxis: DateTimeAxis(),
            series: <ChartSeries>[
              // Renders line chart
              LineSeries<ChartData, DateTime>(
                dataSource: chartData,
                dashArray: <double>[
                  5,
                  5
                ], // Permette di fare la riga tratteggiata

                xValueMapper: (ChartData sales, _) => sales.year,
                yValueMapper: (ChartData sales, _) => sales.sales,
                markerSettings: const MarkerSettings(
                    isVisible: true, shape: DataMarkerType.circle),
              ),
              // dataLabelSettings: DataLabelSettings(isVisible: true),
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.year, this.sales);
  final DateTime year;
  final double sales;
}
