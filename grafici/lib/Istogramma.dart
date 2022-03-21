import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class Istogramma extends StatefulWidget {
  Istogramma({Key? key}) : super(key: key);

  @override
  State<Istogramma> createState() => _IstogrammaState();
}

class _IstogrammaState extends State<Istogramma> {
  late List<SalesData> _charData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _charData = getChartData();
    super.initState();
    _tooltipBehavior = TooltipBehavior(enable: true, header: "nome");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Container(
                child: SfCartesianChart(
                    title: ChartTitle(text: "Titolo dell'istogramma"),
                    tooltipBehavior: _tooltipBehavior,
                    primaryXAxis: NumericAxis(),
                    primaryYAxis: NumericAxis(),
                    series: <ChartSeries<SalesData, double>>[
              // Renders column chart
              ColumnSeries<SalesData, double>(
                  dataSource: _charData,
                  dataLabelSettings: const DataLabelSettings(
                    isVisible: true,
                  ),
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales),
            ]))));
  }

  List<SalesData> getChartData() {
    final List<SalesData> charData = [
      SalesData(2002, 1432600),
      SalesData(2004, 1234239),
      SalesData(2005, 164300),
      SalesData(2006, 134260),
      SalesData(2007, 164200),
      SalesData(2008, 1432600),
    ];

    return charData;
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final double year;
  final double sales;
}
