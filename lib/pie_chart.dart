import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyPieChart extends StatelessWidget {
  // Sample data for the pie chart (Operating System Market Share)
  final Map<String, double> dataMap = {
    "Windows": 30,
    "macOS": 25,
    "iOS": 15,
    "Android": 10,
  };

  // Define a soft color list for the pie chart sections
  final List<Color> colorList = [
    Colors.blue[400]!, // Soft Blue for Windows
    Colors.purple[400]!, // Soft Gray for macOS
    Colors.green[400]!, // Soft Light Blue for iOS
    Colors.amber[400]!, // Soft Amber for Android
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Operating System PieChart',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.blue[100],
        centerTitle: true,
        elevation: 4, // Shadow effect for the AppBar
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20), // Add padding around the chart
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue[100]!, Colors.green[100]!],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(20), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 5), // Changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Pie Chart with increased size
              Container(
                height: MediaQuery.of(context).size.width *
                    0.7, // Large size for the pie chart
                child: PieChart(
                  dataMap: dataMap, // Data for the pie chart
                  animationDuration:
                      Duration(milliseconds: 1200), // Animation duration
                  chartLegendSpacing: 32, // Spacing for the legend
                  chartRadius: MediaQuery.of(context).size.width /
                      1.2, // Increased chart radius for better visibility
                  colorList: colorList, // Color list for the sections
                  initialAngleInDegree: 0, // Initial angle of the pie chart
                  chartType:
                      ChartType.ring, // Type of pie chart (ring or normal)
                  ringStrokeWidth: 32, // Width of the ring stroke
                  centerText: "OS PieChart", // No center text to avoid clutter
                  legendOptions: LegendOptions(
                    showLegendsInRow:
                        false, // Display legends in a column (vertical)
                    legendPosition: LegendPosition.right, // Position of legends
                    showLegends: true, // Show legends
                    legendShape: BoxShape.circle, // Shape of legend items
                    legendTextStyle: TextStyle(
                      fontWeight: FontWeight.bold, // Style for legend text
                      fontSize: 16, // Increased font size for legend text
                    ),
                  ),
                  chartValuesOptions: ChartValuesOptions(
                    showChartValueBackground:
                        false, // Hide background for values
                    showChartValues:
                        true, // Show values on the chart as percentages inside slices
                    showChartValuesInPercentage: true,
                    showChartValuesOutside: false,
                    decimalPlaces: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
