// gauge
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';

// /// Represents MyHomePage class
// class MyHomePage extends StatefulWidget {
//   /// Creates the instance of MyHomePage
//   MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool isTurnedOn = false;
//   Widget _getGauge({bool isRadialGauge = true}) {
//     if (isRadialGauge) {
//       return _getRadialGauge();
//     } else {
//       return _getLinearGauge();
//     }
//   }

//   Widget _getRadialGauge() {
//     return Padding(
//       padding: const EdgeInsets.all(40.0),
//       child: SfRadialGauge(
//           title: GaugeTitle(
//               text: 'Speedometer',
//               textStyle:
//                   const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
//           axes: <RadialAxis>[
//             RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
//               GaugeRange(
//                   startValue: 0,
//                   endValue: 50,
//                   color: Colors.green,
//                   startWidth: 10,
//                   endWidth: 10),
//               GaugeRange(
//                   startValue: 50,
//                   endValue: 100,
//                   color: Colors.orange,
//                   startWidth: 10,
//                   endWidth: 10),
//               GaugeRange(
//                   startValue: 100,
//                   endValue: 150,
//                   color: Colors.red,
//                   startWidth: 10,
//                   endWidth: 10)
//             ], pointers: <GaugePointer>[
//               NeedlePointer(
//                 value: isTurnedOn ? 0 : 90,
//                 animationDuration: 1000,
//                 enableAnimation: true,
//                 knobStyle: KnobStyle(color: Colors.blue, knobRadius: 0.08),
//               )
//             ], annotations: <GaugeAnnotation>[
//               GaugeAnnotation(
//                   widget: Container(
//                       child: const Text('Fuel',
//                           style: TextStyle(
//                               fontSize: 25, fontWeight: FontWeight.bold))),
//                   angle: 90,
//                   positionFactor: 0.8)
//             ])
//           ]),
//     );
//   }

//   Widget _getLinearGauge() {
//     return Container(
//       margin: const EdgeInsets.all(10),
//       child: Column(
//         children: [
//           Expanded(
//             child: SfLinearGauge(
//                 minimum: 0.0,
//                 maximum: 100.0,
//                 orientation: LinearGaugeOrientation.horizontal,
//                 majorTickStyle: const LinearTickStyle(length: 20),
//                 axisLabelStyle:
//                     const TextStyle(fontSize: 12.0, color: Colors.black),
//                 axisTrackStyle: const LinearAxisTrackStyle(
//                     color: Colors.cyan,
//                     edgeStyle: LinearEdgeStyle.bothFlat,
//                     thickness: 15.0,
//                     borderColor: Colors.grey)),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text('Syncfusion Flutter Gauge')),
//         body: Column(
//           children: [
//             Expanded(child: _getGauge()),
//             AnimatedRotation(
//               duration: Duration(seconds: 1),
//               turns: isTurnedOn ? 1 : 0.75,
//               child: IconButton(
//                   onPressed: () {
//                     setState(() {
//                       isTurnedOn = !isTurnedOn;
//                     });
//                   },
//                   icon: Icon(
//                     Icons.key,
//                     size: 100,
//                     color: isTurnedOn ? Colors.grey : Colors.green,
//                   )),
//             ),
//             const SizedBox(height: 50)
//           ],
//         ));
//   }
// }

// gauge updated car version

// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';

// class ModernSpeedometerPage extends StatelessWidget {
//   const ModernSpeedometerPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text(
//           'Modern Speedometer',
//           style: TextStyle(fontSize: 26, color: Colors.white),
//         ),
//         backgroundColor: Colors.transparent,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.black87, Colors.blueGrey[900]!],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SfRadialGauge(
//                 axes: <RadialAxis>[
//                   RadialAxis(
//                     startAngle: 180,
//                     endAngle: 0,
//                     minimum: 0,
//                     maximum: 240,
//                     interval: 30,
//                     radiusFactor: 0.8,
//                     axisLineStyle: AxisLineStyle(
//                       thickness: 15,
//                       color: Colors.grey[800]!,
//                     ),
//                     majorTickStyle: const MajorTickStyle(
//                       length: 10,
//                       thickness: 2,
//                       color: Colors.white,
//                     ),
//                     minorTickStyle: MinorTickStyle(
//                       length: 5,
//                       thickness: 1,
//                       color: Colors.grey[500],
//                     ),
//                     axisLabelStyle: const GaugeTextStyle(
//                       fontSize: 12,
//                       color: Colors.red,
//                     ),
//                     pointers: const <GaugePointer>[
//                       NeedlePointer(
//                         value: 160,
//                         needleColor: Colors.red,
//                         needleEndWidth: 8,
//                         needleLength: 0.67,
//                         enableAnimation: true,
//                         animationType: AnimationType.easeOutBack,
//                         knobStyle: KnobStyle(
//                           color: Colors.redAccent,
//                           sizeUnit: GaugeSizeUnit.factor,
//                           borderColor: Colors.white,
//                           borderWidth: 2,
//                         ),
//                       ),
//                     ],
//                     ranges: <GaugeRange>[
//                       GaugeRange(
//                         startValue: 0,
//                         endValue: 80,
//                         color: Colors.greenAccent.withOpacity(0.7),
//                         startWidth: 15,
//                         endWidth: 15,
//                       ),
//                       GaugeRange(
//                         startValue: 80,
//                         endValue: 160,
//                         color: Colors.yellowAccent.withOpacity(0.7),
//                         startWidth: 15,
//                         endWidth: 15,
//                       ),
//                       GaugeRange(
//                         startValue: 160,
//                         endValue: 240,
//                         color: Colors.redAccent.withOpacity(0.7),
//                         startWidth: 15,
//                         endWidth: 15,
//                       ),
//                     ],
//                     annotations: const <GaugeAnnotation>[
//                       GaugeAnnotation(
//                         widget: Column(
//                           children: [
//                             SizedBox(
//                               height: 50,
//                             ),
//                             Text(
//                               '180',
//                               style: TextStyle(
//                                 fontSize: 40,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.redAccent,
//                               ),
//                             ),
//                             Text(
//                               'km/h',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ],
//                         ),
//                         angle: 90,
//                         positionFactor: 0.6,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
//                 decoration: BoxDecoration(
//                   color: Colors.grey[900],
//                   borderRadius: BorderRadius.circular(15),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.5),
//                       blurRadius: 10,
//                       spreadRadius: 5,
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         _buildDashboardIndicator(
//                             'RPM', '6500', Colors.greenAccent),
//                         _buildDashboardIndicator(
//                             'Fuel', '55%', Colors.yellowAccent),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         _buildDashboardIndicator(
//                             'Temp', '90°C', Colors.redAccent),
//                         _buildDashboardIndicator(
//                             'Battery', '12.6V', Colors.blueAccent),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildDashboardIndicator(String title, String value, Color color) {
//     return Column(
//       children: [
//         Text(
//           title,
//           style: TextStyle(
//             fontSize: 16,
//             color: Colors.white.withOpacity(0.8),
//           ),
//         ),
//         const SizedBox(height: 5),
//         Text(
//           value,
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: color,
//           ),
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

// class LineChartSample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Beautiful Line Chart'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: LineChart(
//           LineChartData(
//             gridData: FlGridData(show: true), // Show grid lines
//             titlesData: FlTitlesData(
//               leftTitles: AxisTitles(
//                 sideTitles: SideTitles(
//                   showTitles: true,
//                   reservedSize: 40,
//                   getTitlesWidget: (value, meta) {
//                     return Text(
//                       value.toString(), // Customize as needed
//                       style: TextStyle(color: Colors.black, fontSize: 12),
//                     );
//                   },
//                 ),
//               ),
//               bottomTitles: AxisTitles(
//                 sideTitles: SideTitles(
//                   showTitles: true,
//                   reservedSize: 30,
//                   getTitlesWidget: (value, meta) {
//                     return Text(
//                       value.toString(), // Customize as needed
//                       style: TextStyle(color: Colors.black, fontSize: 12),
//                     );
//                   },
//                 ),
//               ),
//               topTitles: AxisTitles(
//                   sideTitles: SideTitles(showTitles: false)), // Hide top titles
//               rightTitles: AxisTitles(
//                   sideTitles:
//                       SideTitles(showTitles: false)), // Hide right titles
//             ),
//             borderData: FlBorderData(
//               show: true,
//               border: Border.all(color: Colors.black, width: 1), // Chart border
//             ),
//             lineBarsData: [
//               LineChartBarData(
//                 spots: [
//                   FlSpot(0, 1),
//                   FlSpot(1, 3),
//                   FlSpot(2, 2),
//                   FlSpot(3, 5),
//                   FlSpot(4, 4),
//                 ],
//                 isCurved: true, // Smooth curve for the line
//                 color: Colors.red, // Line color
//                 dotData: FlDotData(show: true), // Show dots on data points
//                 belowBarData:
//                     BarAreaData(show: false), // No area below the line
//               ),
//             ],
//             minX: 0,
//             maxX: 4,
//             minY: 0,
//             maxY: 6,
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: LineChartSample(),
//   ));
// }

// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'dart:math';

// class EnhancedLineChartSample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Enhanced Line Chart'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: LineChart(
//           LineChartData(
//             gridData: FlGridData(show: true), // Show grid lines
//             titlesData: FlTitlesData(
//               leftTitles: AxisTitles(
//                 sideTitles: SideTitles(
//                   showTitles: true,
//                   reservedSize: 40,
//                   getTitlesWidget: (value, meta) {
//                     return Text(
//                       value.toString(), // Customize as needed
//                       style: TextStyle(color: Colors.black, fontSize: 12),
//                     );
//                   },
//                 ),
//               ),
//               bottomTitles: AxisTitles(
//                 sideTitles: SideTitles(
//                   showTitles: true,
//                   reservedSize: 30,
//                   getTitlesWidget: (value, meta) {
//                     return Text(
//                       'Day ${value.toInt()}', // Customize as needed
//                       style: TextStyle(color: Colors.black, fontSize: 12),
//                     );
//                   },
//                 ),
//               ),
//               topTitles: AxisTitles(
//                   sideTitles: SideTitles(showTitles: false)), // Hide top titles
//               rightTitles: AxisTitles(
//                   sideTitles:
//                       SideTitles(showTitles: false)), // Hide right titles
//             ),
//             borderData: FlBorderData(
//               show: true,
//               border: Border.all(color: Colors.black, width: 1), // Chart border
//             ),
//             lineBarsData: [
//               LineChartBarData(
//                 spots: generateRandomSpots(), // Generate random data points
//                 isCurved: true, // Smooth curve for the line
//                 color: Colors.red, // Line color
//                 belowBarData: BarAreaData(
//                   show: true,
//                   color: Colors.blue.withOpacity(0.3),
//                 ), // Area below the line with opacity
//                 dotData: FlDotData(show: true), // Show dots on data points
//                 barWidth: 4, // Width of the line
//               ),
//             ],
//             minX: 0,
//             maxX: 6,
//             minY: 0,
//             maxY: 6,
//           ),
//           duration: Duration(
//               milliseconds: 250), // Correctly set duration for animations
//         ),
//       ),
//     );
//   }

//   List<FlSpot> generateRandomSpots() {
//     Random random = Random();
//     return List.generate(
//         7, (index) => FlSpot(index.toDouble(), random.nextDouble() * 6));
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: EnhancedLineChartSample(),
//   ));
// }

// import 'package:flutter/material.dart';

// class MyTextField extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'T e x t F i e l d',
//           style: TextStyle(fontSize: 26),
//         ),
//         backgroundColor: Colors.green.shade200,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Enter Your Details',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black87,
//                 ),
//               ),
//               SizedBox(height: 20),
//               _buildTextField('First Name', Icons.person),
//               SizedBox(height: 15),
//               _buildTextField('Last Name', Icons.person_outline),
//               SizedBox(height: 15),
//               _buildTextField('Address', Icons.home, maxLines: 3),
//               SizedBox(height: 15),
//               _buildTextField('Email', Icons.email),
//               SizedBox(height: 15),
//               _buildTextField('Phone No.', Icons.phone),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(String label, IconData icon, {int maxLines = 1}) {
//     return TextField(
//       decoration: InputDecoration(
//         labelText: label,
//         prefixIcon: Icon(icon, color: Colors.blueGrey),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.green, width: 2),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.blueGrey, width: 1.5),
//         ),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//         filled: true,
//         fillColor: Colors.white,
//       ),
//       maxLines: maxLines,
//     );
//   }
// }
