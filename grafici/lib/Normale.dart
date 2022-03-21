import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class Normale extends StatelessWidget {
  // const Normale({Key? key}) : super(key: key);
  late TooltipBehavior _tooltipBehavior =
      TooltipBehavior(enable: true, header: "nome");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Container(
                child: SfCartesianChart(
                    title: ChartTitle(text: "Titolo del grafico della normale"),
                    tooltipBehavior: _tooltipBehavior,
                    series: <ChartSeries>[
              HistogramSeries<ChartData, double>(
                  dataSource: <ChartData>[
                    ChartData(5.250),
                    ChartData(7.750),
                    ChartData(0.0),
                    ChartData(8.275),
                    ChartData(9.750),
                    ChartData(7.750),
                    ChartData(8.275),
                    ChartData(6.250),
                    ChartData(5.750),
                    ChartData(5.250),
                    ChartData(23.000),
                    ChartData(26.500),
                    ChartData(26.500),
                    ChartData(27.750),
                    ChartData(25.025),
                    ChartData(26.500),
                    ChartData(28.025),
                    ChartData(29.250),
                    ChartData(26.750),
                    ChartData(27.250),
                    ChartData(26.250),
                    ChartData(25.250),
                    ChartData(34.500),
                    ChartData(25.625),
                    ChartData(25.500),
                    ChartData(26.625),
                    ChartData(36.275),
                    ChartData(36.250),
                    ChartData(26.875),
                    ChartData(40.000),
                    ChartData(43.000),
                    ChartData(46.500),
                    ChartData(47.750),
                    ChartData(45.025),
                    ChartData(56.500),
                    ChartData(56.500),
                    ChartData(58.025),
                    ChartData(59.250),
                    ChartData(56.750),
                    ChartData(57.250),
                    ChartData(46.250),
                    ChartData(55.250),
                    ChartData(44.500),
                    ChartData(45.525),
                    ChartData(55.500),
                    ChartData(46.625),
                    ChartData(46.275),
                    ChartData(56.250),
                    ChartData(46.875),
                    ChartData(43.000),
                    ChartData(46.250),
                    ChartData(55.250),
                    ChartData(44.500),
                    ChartData(45.425),
                    ChartData(55.500),
                    ChartData(56.625),
                    ChartData(46.275),
                    ChartData(56.250),
                    ChartData(46.875),
                    ChartData(43.000),
                    ChartData(46.250),
                    ChartData(55.250),
                    ChartData(44.500),
                    ChartData(45.425),
                    ChartData(55.500),
                    ChartData(46.625),
                    ChartData(56.275),
                    ChartData(46.250),
                    ChartData(56.875),
                    ChartData(41.000),
                    ChartData(63.000),
                    ChartData(66.500),
                    ChartData(67.750),
                    ChartData(65.025),
                    ChartData(66.500),
                    ChartData(76.500),
                    ChartData(78.025),
                    ChartData(79.250),
                    ChartData(76.750),
                    ChartData(77.250),
                    ChartData(66.250),
                    ChartData(75.250),
                    ChartData(74.500),
                    ChartData(65.625),
                    ChartData(75.500),
                    ChartData(76.625),
                    ChartData(76.275),
                    ChartData(66.250),
                    ChartData(66.875),
                    ChartData(80.000),
                    ChartData(85.250),
                    ChartData(87.750),
                    ChartData(89.000),
                    ChartData(88.275),
                    ChartData(89.750),
                    ChartData(97.750),
                    ChartData(98.275),
                    ChartData(96.250),
                    ChartData(95.750),
                    ChartData(95.250)
                  ],
                  showNormalDistributionCurve: true,
                  curveColor: const Color.fromRGBO(192, 108, 132, 1),
                  binInterval: 20,
                  yValueMapper: (ChartData sales, _) => sales.y)
            ]))));
  }
}

class ChartData {
  ChartData(this.y);
  final double y;
}
