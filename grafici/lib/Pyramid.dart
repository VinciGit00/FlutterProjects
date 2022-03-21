import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Pyramid extends StatefulWidget {
  Pyramid({Key? key}) : super(key: key);

  @override
  State<Pyramid> createState() => _PyramidState();
}

class _PyramidState extends State<Pyramid> {
  late List<ChartData> _charData;
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
                child: SfPyramidChart(
          title: ChartTitle(text: "Grafico a piramide"),
          legend: Legend(isVisible: true),
          tooltipBehavior: _tooltipBehavior,
          series: PyramidSeries<ChartData, String>(
              dataSource: _charData,
              dataLabelSettings: DataLabelSettings(isVisible: true),
              emptyPointSettings:
                  EmptyPointSettings(mode: EmptyPointMode.average),
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y),
        ))));
  }

  List<ChartData> getChartData() {
    final List<ChartData> charData = [
      ChartData("x", 2, Colors.yellow),
      ChartData("y", 4, Colors.blue),
      ChartData("z", 5, Colors.green),
      ChartData("gamma", 6, Colors.red),
      ChartData("delta", 7, Colors.purple),
    ];

    return charData;
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
