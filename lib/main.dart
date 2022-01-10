import 'package:flutter/material.dart';
import 'package:multi_charts/multi_charts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radar Chart Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Radar Chart Example"),
        ),
        body: Column(children: [
          Container(
            width: 290,
            height: 500,
            //Radar Chart
            child: RadarChart(
              values: [5, 5, 4, 7, 9, 5, 6],
              labels: [
                "L1",
                "L2",
                "L3",
                "L4",
                "L5",
                "L6",
                "L7",
              ],
              maxValue: 10,
              fillColor: Colors.blue,
              chartRadiusFactor: 0.30,
            ),
          ),
          //Pie Chart
          const PieChart(
            values: [15, 10, 30, 25, 20],
            labels: ["Label1", "Label2", "Label3", "Label4", "Label5"],
            sliceFillColors: [
              Colors.blueAccent,
              Colors.greenAccent,
              Colors.pink,
              Colors.orange,
              Colors.red,
            ],
            animationDuration: Duration(milliseconds: 2500),
            legendPosition: LegendPosition.Right,
          ),
        ]),
      ),
    );
  }
}
