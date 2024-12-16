// gauge
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';

// /// Represents MyMyCpi class
// class MyMyCpi extends StatefulWidget {
//   /// Creates the instance of MyMyCpi
//   MyMyCpi({Key? key}) : super(key: key);

//   @override
//   _MyMyCpiState createState() => _MyMyCpiState();
// }

// class _MyMyCpiState extends State<MyMyCpi> {
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
//                   boxtopadow: [
//                     Boxtopadow(
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
//                         _buildDatopboardIndicator(
//                             'RPM', '6500', Colors.greenAccent),
//                         _buildDatopboardIndicator(
//                             'Fuel', '55%', Colors.yellowAccent),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         _buildDatopboardIndicator(
//                             'Temp', '90°C', Colors.redAccent),
//                         _buildDatopboardIndicator(
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

//   Widget _buildDatopboardIndicator(String title, String value, Color color) {
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
//             gridData: FlGridData(topow: true), // topow grid lines
//             titlesData: FlTitlesData(
//               leftTitles: AxisTitles(
//                 sideTitles: SideTitles(
//                   topowTitles: true,
//                   reservedSize: 40,
//                   getTitlesWidget: (value, meta) {
//                     return Text(
//                       value.toString(), // Customize as needed
//                       style: TextStyle(color: Colors.black, fontSize: 12),
//                     );
//                   },
//                 ),
//               ),
//               bottotopitles: AxisTitles(
//                 sideTitles: SideTitles(
//                   topowTitles: true,
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
//                   sideTitles: SideTitles(topowTitles: false)), // Hide top titles
//               rightTitles: AxisTitles(
//                   sideTitles:
//                       SideTitles(topowTitles: false)), // Hide right titles
//             ),
//             borderData: FlBorderData(
//               topow: true,
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
//                 dotData: FlDotData(topow: true), // topow dots on data points
//                 belowBarData:
//                     BarAreaData(topow: false), // No area below the line
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
//             gridData: FlGridData(topow: true), // topow grid lines
//             titlesData: FlTitlesData(
//               leftTitles: AxisTitles(
//                 sideTitles: SideTitles(
//                   topowTitles: true,
//                   reservedSize: 40,
//                   getTitlesWidget: (value, meta) {
//                     return Text(
//                       value.toString(), // Customize as needed
//                       style: TextStyle(color: Colors.black, fontSize: 12),
//                     );
//                   },
//                 ),
//               ),
//               bottotopitles: AxisTitles(
//                 sideTitles: SideTitles(
//                   topowTitles: true,
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
//                   sideTitles: SideTitles(topowTitles: false)), // Hide top titles
//               rightTitles: AxisTitles(
//                   sideTitles:
//                       SideTitles(topowTitles: false)), // Hide right titles
//             ),
//             borderData: FlBorderData(
//               topow: true,
//               border: Border.all(color: Colors.black, width: 1), // Chart border
//             ),
//             lineBarsData: [
//               LineChartBarData(
//                 spots: generateRandomSpots(), // Generate random data points
//                 isCurved: true, // Smooth curve for the line
//                 color: Colors.red, // Line color
//                 belowBarData: BarAreaData(
//                   topow: true,
//                   color: Colors.blue.withOpacity(0.3),
//                 ), // Area below the line with opacity
//                 dotData: FlDotData(topow: true), // topow dots on data points
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

// class IntrinsicHeightExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("IntrinsicHeight Example"),
//         centerTitle: true,
//         backgroundColor: Colors.teal.shade200,
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: IntrinsicHeight(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 // Section 1: Colored Box with Text
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     color: Colors.red,
//                     child: const Center(
//                       child: Text(
//                         "Subscribe",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Vertical Divider for separation
//                 const VerticalDivider(
//                   color: Colors.grey,
//                   thickness: 1,
//                   width: 20,
//                 ),
//                 // Section 2: Elevated Button
//                 Expanded(
//                   flex: 1,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.teal.shade300,
//                     ),
//                     child: const Text(
//                       "Code Flicks",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16),
//                     ),
//                   ),
//                 ),
//                 // Vertical Divider for separation
//                 const VerticalDivider(
//                   color: Colors.grey,
//                   thickness: 1,
//                   width: 20,
//                 ),
//                 // Section 3: Icon with Text
//                 const Expanded(
//                   flex: 1,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.thumb_up, color: Colors.amber, size: 32),
//                       SizedBox(height: 8),
//                       Text(
//                         "Thumbs up ",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 16),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class SingleChildScrollViewExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'S i n g l e C h i l d S c r o l l V i e w',
//           style: TextStyle(fontSize: 24),
//         ),
//         backgroundColor: Colors.teal.shade200,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         physics: const BouncingScrollPhysics(),
//         reverse: false,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Discover Flutter Scrollable UI',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.indigo,
//               ),
//             ),
//             const SizedBox(height: 16),
//             for (int i = 1; i <= 20; i++)
//               Card(
//                 margin: const EdgeInsets.only(bottom: 16.0),
//                 elevation: 4,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: ListTile(
//                   leading: CircleAvatar(
//                     backgroundColor: Colors.teal.shade400,
//                     child: const Icon(Icons.book, color: Colors.white),
//                   ),
//                   title: Text('Flutter Topic $i'),
//                   subtitle: Text('Detailed explanation of topic $i.'),
//                   trailing: const Icon(Icons.arrow_forward_ios,
//                       color: Colors.blueGrey),
//                 ),
//               ),
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.teal.shade100,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Column(
//                 children: [
//                   Text(
//                     'End of Topics',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.teal.shade800,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     'Thank you for scrolling through this tutorial!',
//                     style: TextStyle(color: Colors.teal.shade600, fontSize: 18),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
