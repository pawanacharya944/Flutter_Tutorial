import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyPieChart extends StatelessWidget {
  // sample data for the pie chart
  final Map<String, double> dataMap = {
    'Windows': 30,
    'macOS': 25,
    'iOS': 15,
    'Android': 10,
  };
  // define color list for the pie chart sections

  final List<Color> colorList = [
    Colors.blue[400]!, // for Windows
    Colors.purple[300]!, // for macOS
    Colors.green[400]!, // for iOS
    Colors.amber[300]!, // for android
  ];

  MyPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Operating System Pie Chart',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[200]!, Colors.green[200]!],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.7,
              child: PieChart(
                dataMap: dataMap,
                animationDuration: Duration(milliseconds: 1200),
                chartLegendSpacing: 32,
                chartRadius: MediaQuery.of(context).size.width / 1.2,
                colorList: colorList,
                initialAngleInDegree: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
