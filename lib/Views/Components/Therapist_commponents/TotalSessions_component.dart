import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class TotalSessionsComponent extends StatelessWidget {
  final int minutes;

  const TotalSessionsComponent({Key? key, required this.minutes})
      : super(key: key);

  List<ChartData> getLastFiveMonths() {
    final now = DateTime.now();
    final random = Random();
    final values = List.generate(4, (_) => random.nextInt((minutes / 5).round()));
    values.add(minutes - values.reduce((a, b) => a + b));

    return List<ChartData>.generate(5, (i) {
      final month = DateTime(now.year, now.month - i);
      return ChartData(DateFormat('MMM').format(month), values[i].toDouble());
    }).reversed.toList();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final List<ChartData> chartData = getLastFiveMonths();
    return Padding(
      padding:
      EdgeInsets.fromLTRB(width * 0.03, height * 0.07, width * 0.05, 0),
      child: Container(
        width: width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 1),
              ),
            ]),
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Total sessions’ minutes",
                  style: TextStyle(
                      fontSize: width * 0.045, fontWeight: FontWeight.w600),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    "$minutes",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "min this month",
                    style:
                    TextStyle(color: Colors.grey, fontSize: width * 0.03),
                  )
                ],
              ),
            ],
          ),
          minutes > 0
              ? SfCartesianChart(
              primaryXAxis: const CategoryAxis(),
              legend: const Legend(isVisible: true),
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <CartesianSeries>[
                SplineSeries<ChartData, String>(
                  dataSource: chartData ,
                  xValueMapper: (ChartData  data, _) => data.x,
                  yValueMapper: (ChartData  data, _) => data.y,)
              ])
              : Text(
            "No data to display ",
            style: TextStyle(fontSize: width * 0.04),
          )
        ]),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}