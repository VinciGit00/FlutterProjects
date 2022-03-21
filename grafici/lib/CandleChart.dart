import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class CandleChart extends StatefulWidget {
  CandleChart({Key? key}) : super(key: key);

  @override
  State<CandleChart> createState() => _CandleChartState();
}

class _CandleChartState extends State<CandleChart> {
  late List<ChartData> data;

  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    super.initState();
    data = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true, header: "nome");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Container(
                child: SfCartesianChart(
                    primaryXAxis: DateTimeAxis(),
                    title: ChartTitle(text: "Titolo del candle chart"),
                    tooltipBehavior: _tooltipBehavior,
                    series: <ChartSeries>[
              // Renders CandleSeries
              CandleSeries<ChartData, DateTime>(
                dataSource: data,
                xValueMapper: (ChartData sales, _) => sales.x,
                lowValueMapper: (ChartData sales, _) => sales.low,
                highValueMapper: (ChartData sales, _) => sales.high,
                openValueMapper: (ChartData sales, _) => sales.open,
                closeValueMapper: (ChartData sales, _) => sales.close,
              )
            ]))));
  }

  List<ChartData> getChartData() {
    return <ChartData>[
      ChartData(x: DateTime(2011), open: 10, close: 11, low: 2, high: 15),
      ChartData(x: DateTime(2012), open: 10, close: 11, low: 2, high: 15),
      ChartData(x: DateTime(2013), open: 10, close: 11, low: 2, high: 15),
      ChartData(x: DateTime(2014), open: 11, close: 21, low: 2, high: 15),
      ChartData(x: DateTime(2015), open: 430, close: 113, low: 2, high: 15),
    ];
  }
}

class ChartData {
  ChartData(
      {required this.x,
      required this.open,
      required this.close,
      required this.low,
      required this.high});
  final DateTime? x;
  final num? open;
  final num? close;
  final num? low;
  final num? high;
}
