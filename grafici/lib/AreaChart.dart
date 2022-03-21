import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class AreaChart extends StatefulWidget {
  AreaChart({Key? key}) : super(key: key);

  @override
  State<AreaChart> createState() => _AreaChartState();
}

class _AreaChartState extends State<AreaChart> {
  late List<SalesData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
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
                    title: ChartTitle(text: "Titolo dell'area chart"),
                    //primaryXAxis: NumericAxis(),
                    tooltipBehavior: _tooltipBehavior,
                    series: <ChartSeries>[
              AreaSeries<SalesData, double>(
                dataSource: _chartData,
                color: Colors.deepOrange[300]!,
                // borderMode: AreaBorderMode.excludeBottom,
                borderColor: Colors.green,
                borderWidth: 2,
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales,
                markerSettings: const MarkerSettings(
                    isVisible: true, shape: DataMarkerType.circle),
              )
            ]))));
  }

  List<SalesData> getChartData() {
    final List<SalesData> charData = [
      SalesData(2002, 1),
      SalesData(2004, 2),
      SalesData(2005, 3),
      SalesData(2006, 4),
      SalesData(2007, 5),
      SalesData(2008, 6),
    ];

    return charData;
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final double year;
  final double sales;
}
