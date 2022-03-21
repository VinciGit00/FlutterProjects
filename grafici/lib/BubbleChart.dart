import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class BubbleChart extends StatefulWidget {
  BubbleChart({Key? key}) : super(key: key);

  @override
  State<BubbleChart> createState() => _BubbleChartState();
}

class _BubbleChartState extends State<BubbleChart> {
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    super.initState();
    _tooltipBehavior = TooltipBehavior(enable: true, header: "nome");
  }

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(DateTime(2010, 2, 4), 35, 0.32),
      ChartData(DateTime(2011, 2, 4), 38, 0.21),
      ChartData(DateTime(2012, 2, 4), 34, 0.38),
      ChartData(DateTime(2013, 6, 4), 52, 0.29),
      ChartData(DateTime(2033, 2, 4), 40, 0.34)
    ];

    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Container(
                child: SfCartesianChart(
                    title: ChartTitle(text: "Titolo del bubble chart"),
                    tooltipBehavior: _tooltipBehavior,
                    primaryXAxis: DateTimeAxis(),
                    series: <ChartSeries>[
              // Renders bubble chart
              BubbleSeries<ChartData, DateTime>(
                  dataSource: chartData,
                  sizeValueMapper: (ChartData sales, _) => sales.size,
                  xValueMapper: (ChartData sales, _) => sales.x,
                  yValueMapper: (ChartData sales, _) => sales.y)
            ]))));
  }
}

class ChartData {
  ChartData(this.x, this.y, this.size);
  final DateTime x;
  final double y;
  final double size;
}
