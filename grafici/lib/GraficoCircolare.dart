import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'GPData.dart';

class GraficoCircolare extends StatefulWidget {
  GraficoCircolare({Key? key}) : super(key: key);

  @override
  State<GraficoCircolare> createState() => _GraficoCircolareState();
}

class _GraficoCircolareState extends State<GraficoCircolare> {
  late List<GPData> _charData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _charData = getChartData();
    super.initState();
    _tooltipBehavior = TooltipBehavior(
      enable: true, /*header: "nome"*/
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SfCircularChart(
          title: ChartTitle(text: "Grafico circolare"),
          legend: Legend(isVisible: true),
          tooltipBehavior: _tooltipBehavior,
          series: <CircularSeries>[
            PieSeries<GPData, String>(
                dataSource: _charData,
                xValueMapper: (GPData data, _) => data.continent,
                yValueMapper: (GPData data, _) => data.gdp,
                dataLabelSettings: const DataLabelSettings(isVisible: true)),
          ],
        ),
      ),
    );
  }

//è una funzione per creare dati di tipo Data
  List<GPData> getChartData() {
    final List<GPData> charData = [
      GPData("Oceania", 1432600),
      GPData("USA", 1234239),
      GPData("Italy", 164300),
      GPData("Bergamo", 134260),
      GPData("China", 164200),
      GPData("France", 1432600),
    ];

    return charData;
  }
}
