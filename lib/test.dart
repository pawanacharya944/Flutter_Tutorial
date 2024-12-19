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
//                             'Battery', '12.6V', Colors.blueGrey),
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

// void main() {
//   runApp(VisibilityDemo());
// }

// class VisibilityDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false, // Hides debug banner
//       home: MyVisibility(),
//     );
//   }
// }

// class MyVisibility extends StatefulWidget {
//   @override
//   _MyVisibilityState createState() =>
//       _MyVisibilityState();
// }

// class _MyVisibilityState extends State<MyVisibility> {
//   bool isVisible = true; // Toggle state for visibility

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'V i s i b i l i t y',
//           style: TextStyle(fontSize: 26),
//         ),
//         backgroundColor: Colors.teal,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Visibility widget
//             Visibility(
//               visible: isVisible, // Toggles widget visibility
//               replacement: Text(
//                 'Widget is hidden', // Shown when the widget is hidden
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: Colors.red,
//                   fontStyle: FontStyle.italic,
//                 ),
//               ),
//               maintainState: true, // Keeps widget state when hidden
//               maintainAnimation: true, // Keeps animation running when hidden
//               maintainSize: true, // Maintains space for the widget
//               child: Container(
//                 height: 150,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.teal[100],
//                   borderRadius: BorderRadius.circular(12),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 8,
//                       offset: Offset(0, 3), // Shadow position
//                     ),
//                   ],
//                 ),
//                 child: Center(
//                   child: Text(
//                     'This widget is visible',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.teal[900],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20), // Spacer
//             // Button to toggle visibility
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   isVisible = !isVisible; // Toggle the visibility state
//                 });
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.teal,
//                 padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//               child: Text(
//                 isVisible ? 'Hide Widget' : 'Show Widget',
//                 style: TextStyle(fontSize: 16, color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class AboutListTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'A b o u t L i s t T i l e',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.teal.shade200, // Customized AppBar color
      ),
      body: ListView(
        children: [
          // Some other list items for context
          ListTile(
            leading: const Icon(Icons.info, color: Colors.blueGrey),
            title: const Text(
              'General Info',
              style: TextStyle(fontSize: 18),
            ),
            subtitle: const Text('Details about the app'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('General Info clicked')),
              );
            },
          ),
          const Divider(), // Adds a separator between list items

          // AboutListTile
          AboutListTile(
            icon:
                const Icon(Icons.help, color: Colors.teal), // Icon for the tile
            child: Text(
              'About this App',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.teal.shade800), // Custom style for text
            ),
            applicationName: 'Flutter App Demo', // App name
            applicationVersion: '1.0.0', // Version of the app
            applicationIcon:
                const Icon(Icons.flutter_dash, size: 60, color: Colors.blue),
            applicationLegalese:
                '© 2024 Code Flicks. All rights reserved.', // Legal information
            aboutBoxChildren: const [
              // Additional widgets to display in the about box
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  'This app is a demo showcasing the AboutListTile widget. Learn Flutter with Code Flicks!',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Thank you for using this app!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),

          const Divider(), // Adds a separator

          // Another example ListTile
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.blueGrey),
            title: const Text(
              'Settings',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Settings clicked')),
              );
            },
          ),
        ],
      ),
    );
  }
}
