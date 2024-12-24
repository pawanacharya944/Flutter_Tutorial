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

// import 'package:flutter/material.dart';

// class ToggleText extends StatefulWidget {
//   @override
//   _ToggleTextState createState() => _ToggleTextState();
// }

// class _ToggleTextState extends State<ToggleText> {
//   bool showFirstText = true;

//   void toggleText() {
//     setState(() {
//       showFirstText = !showFirstText;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text(
//           'T o g g l e  T e x t',
//           style: TextStyle(fontSize: 24),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         centerTitle: true,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Colors.blue.shade200, Colors.teal.shade200],
//           ),
//         ),
//         child: Center(
//           child: GestureDetector(
//             onTap: toggleText,
//             child: AnimatedSwitcher(
//               duration: const Duration(milliseconds: 500),
//               transitionBuilder: (child, animation) => ScaleTransition(
//                 scale: animation,
//                 child: child,
//               ),
//               child: Text(
//                 showFirstText
//                     ? 'Welcome to Code Flicks!🧑🏻‍💻'
//                     : 'Explore Flutter Tutorials 🚀',
//                 key: ValueKey<bool>(showFirstText),
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:confetti/confetti.dart';

// class CelebrationScreen extends StatefulWidget {
//   @override
//   _CelebrationScreenState createState() => _CelebrationScreenState();
// }

// class _CelebrationScreenState extends State<CelebrationScreen> {
//   final ConfettiController _confettiController =
//       ConfettiController(duration: const Duration(seconds: 5));
//   bool showAnimation = false;

//   void _startCelebration() {
//     setState(() {
//       showAnimation = true;
//     });
//     _confettiController.play();
//     Future.delayed(Duration(seconds: 6), () {
//       setState(() {
//         showAnimation = false;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _confettiController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "100 Days of Flutter - Code Flicks",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.purple,
//       ),
//       body: Stack(
//         children: [
//           // Gradient background
//           AnimatedContainer(
//             duration: Duration(seconds: 3),
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Colors.purple.shade300,
//                   Colors.blue.shade200,
//                   Colors.pink.shade200,
//                 ],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//           ),
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Title message
//                 AnimatedOpacity(
//                   duration: Duration(seconds: 2),
//                   opacity: showAnimation ? 1.0 : 0.0,
//                   child: Text(
//                     "🎉 100 Days of Flutter Completed 🎉",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 32,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       shadows: [
//                         Shadow(
//                           blurRadius: 10.0,
//                           color: Colors.black26,
//                           offset: Offset(2, 2),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 // Subtitle
//                 AnimatedOpacity(
//                   duration: Duration(seconds: 2),
//                   opacity: showAnimation ? 1.0 : 0.0,
//                   child: Text(
//                     "By Code Flicks\nVideos on Widgets, Apps, Packages, and More!",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.white70,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 // Celebrate button
//                 ElevatedButton(
//                   onPressed: _startCelebration,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.purple.shade700,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: Text(
//                     "Celebrate!",
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Confetti animation
//           if (showAnimation)
//             Align(
//               alignment: Alignment.center,
//               child: ConfettiWidget(
//                 confettiController: _confettiController,
//                 blastDirectionality: BlastDirectionality.explosive,
//                 emissionFrequency: 0.05,
//                 numberOfParticles: 30,
//                 shouldLoop: false,
//                 colors: [Colors.purple, Colors.blue, Colors.pink, Colors.white],
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:confetti/confetti.dart';

// void main() => runApp(CelebrationApp());

// class CelebrationApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: CelebrationScreen(),
//     );
//   }
// }

// class CelebrationScreen extends StatefulWidget {
//   @override
//   _CelebrationScreenState createState() => _CelebrationScreenState();
// }

// class _CelebrationScreenState extends State<CelebrationScreen> {
//   final ConfettiController _confettiController =
//       ConfettiController(duration: const Duration(seconds: 5));

//   void _startCelebration() {
//     _confettiController.play();
//   }

//   @override
//   void dispose() {
//     _confettiController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: Text(
//           "100 Days of Flutter - Code Flicks",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.transparent,
//       ),
//       body: Stack(
//         children: [
//           // Background Gradient
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Colors.pink.shade100,
//                   Colors.purple.shade100,
//                   Colors.red.shade100,
//                 ],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//           ),
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Celebratory Text
//                 Text(
//                   "🎉 100 Days of Flutter Completed 🎉",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 32,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.teal.shade800,
//                     shadows: [
//                       Shadow(
//                         blurRadius: 8.0,
//                         color: Colors.black26,
//                         offset: Offset(2, 2),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   "By Code Flicks\nVideos on Widgets, Apps, Packages, and More!",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.teal.shade600,
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 // Celebrate Button
//                 ElevatedButton(
//                   onPressed: _startCelebration,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.teal.shade700,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: Text(
//                     "Celebrate!",
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Confetti Animation
//           Align(
//             alignment: Alignment.center,
//             child: ConfettiWidget(
//               confettiController: _confettiController,
//               blastDirectionality: BlastDirectionality.explosive,
//               emissionFrequency: 0.05,
//               numberOfParticles: 30,
//               shouldLoop: false,
//               colors: [Colors.teal, Colors.cyan, Colors.blueGrey, Colors.white],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:confetti/confetti.dart';

// void main() => runApp(CelebrationApp());

// class CelebrationApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: CelebrationScreen(),
//     );
//   }
// }

// class CelebrationScreen extends StatefulWidget {
//   @override
//   _CelebrationScreenState createState() => _CelebrationScreenState();
// }

// class _CelebrationScreenState extends State<CelebrationScreen> {
//   final ConfettiController _confettiController =
//       ConfettiController(duration: const Duration(seconds: 5));
//   double opacity = 0.0;
//   double scale = 0.5;

//   void _startCelebration() {
//     _confettiController.play();
//     setState(() {
//       opacity = 1.0;
//       scale = 1.0;
//     });
//   }

//   @override
//   void dispose() {
//     _confettiController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "100 Days of Flutter - Code Flicks",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.teal,
//       ),
//       body: Stack(
//         children: [
//           // Background Gradient
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Colors.teal.shade100,
//                   Colors.cyan.shade100,
//                   Colors.blueGrey.shade100,
//                 ],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//           ),
//           // Main Content
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Celebration Text
//                 AnimatedOpacity(
//                   duration: Duration(seconds: 2),
//                   opacity: opacity,
//                   child: AnimatedScale(
//                     duration: Duration(seconds: 2),
//                     scale: scale,
//                     curve: Curves.easeInOut,
//                     child: Text(
//                       "🎉 100 Days of Flutter Completed 🎉",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 32,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.teal.shade800,
//                         shadows: [
//                           Shadow(
//                             blurRadius: 8.0,
//                             color: Colors.black26,
//                             offset: Offset(2, 2),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   "By Code Flicks\nVideos on Widgets, Apps, Packages, and More!",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.teal.shade600,
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 // Celebrate Button
//                 ElevatedButton(
//                   onPressed: _startCelebration,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.teal.shade700,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                   child: Text(
//                     "Celebrate!",
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Confetti Effect
//           Align(
//             alignment: Alignment.center,
//             child: ConfettiWidget(
//               confettiController: _confettiController,
//               blastDirectionality: BlastDirectionality.explosive,
//               emissionFrequency: 0.05,
//               numberOfParticles: 30,
//               shouldLoop: false,
//               colors: [Colors.teal, Colors.cyan, Colors.blueGrey, Colors.white],
//             ),
//           ),
//           // Floating Heart Icons
//           _buildFloatingIcons(),
//         ],
//       ),
//     );
//   }

//   Widget _buildFloatingIcons() {
//     return Stack(
//       children: [
//         for (int i = 0; i < 5; i++) _buildHeartAnimation(i),
//       ],
//     );
//   }

//   Widget _buildHeartAnimation(int index) {
//     final randomLeft = (index * 0.2 + 0.2) * MediaQuery.of(context).size.width;
//     final duration = Duration(seconds: 3 + index);
//     return Positioned(
//       bottom: 0,
//       left: randomLeft,
//       child: AnimatedOpacity(
//         opacity: 1.0,
//         duration: duration,
//         child: Icon(
//           Icons.favorite,
//           color: Colors.red.shade300,
//           size: 30 + (index * 10),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:confetti/confetti.dart';

// void main() => runApp(CelebrationApp());

// class CelebrationApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: CelebrationScreen(),
//     );
//   }
// }

// class CelebrationScreen extends StatefulWidget {
//   @override
//   _CelebrationScreenState createState() => _CelebrationScreenState();
// }

// class _CelebrationScreenState extends State<CelebrationScreen> {
//   final ConfettiController _confettiController =
//       ConfettiController(duration: const Duration(seconds: 5));
//   double opacity = 0.0;
//   double scale = 0.5;

//   void _startCelebration() {
//     _confettiController.play();
//     setState(() {
//       opacity = 1.0;
//       scale = 1.0;
//     });
//   }

//   @override
//   void dispose() {
//     _confettiController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Vibrant Gradient Background
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Colors.deepPurple.shade400,
//                   Colors.pink.shade300,
//                   Colors.orange.shade300,
//                 ],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//           ),
//           // Celebration Content
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Animated Celebration Text
//                 AnimatedOpacity(
//                   duration: Duration(seconds: 2),
//                   opacity: opacity,
//                   child: AnimatedScale(
//                     duration: Duration(seconds: 2),
//                     scale: scale,
//                     curve: Curves.easeInOut,
//                     child: Column(
//                       children: [
//                         Text(
//                           "🎉 100 Days of Flutter 🎉",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 36,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             shadows: [
//                               Shadow(
//                                 blurRadius: 10.0,
//                                 color: Colors.black54,
//                                 offset: Offset(2, 2),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Text(
//                           "Completed by Code Flicks",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.w500,
//                             color: Colors.white70,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 // Button to Trigger Celebration
//                 ElevatedButton(
//                   onPressed: _startCelebration,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.deepOrangeAccent.shade200,
//                     padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(25),
//                     ),
//                     elevation: 10,
//                   ),
//                   child: Text(
//                     "Celebrate!",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Confetti Effect
//           Align(
//             alignment: Alignment.center,
//             child: ConfettiWidget(
//               confettiController: _confettiController,
//               blastDirectionality: BlastDirectionality.explosive,
//               emissionFrequency: 0.05,
//               numberOfParticles: 40,
//               shouldLoop: false,
//               colors: [
//                 Colors.yellow,
//                 Colors.orange,
//                 Colors.pink,
//                 Colors.purple,
//                 Colors.white,
//               ],
//             ),
//           ),
//           // Floating Star Icons
//           _buildFloatingIcons(),
//         ],
//       ),
//     );
//   }

//   Widget _buildFloatingIcons() {
//     return Stack(
//       children: [
//         for (int i = 0; i < 7; i++) _buildStarAnimation(i),
//       ],
//     );
//   }

//   Widget _buildStarAnimation(int index) {
//     final randomLeft = (index * 0.15 + 0.1) * MediaQuery.of(context).size.width;
//     final duration = Duration(seconds: 3 + index);
//     return AnimatedPositioned(
//       duration: duration,
//       bottom: 0,
//       left: randomLeft,
//       child: Icon(
//         Icons.star,
//         color: Colors.amber.shade400,
//         size: 40 + (index * 4),
//       ),
//       onEnd: () {
//         setState(() {
//           // Reset position for continuous animation (optional)
//         });
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:confetti/confetti.dart';

// void main() => runApp(CelebrationApp());

// class CelebrationApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: CelebrationScreen(),
//     );
//   }
// }

// class CelebrationScreen extends StatefulWidget {
//   @override
//   _CelebrationScreenState createState() => _CelebrationScreenState();
// }

// class _CelebrationScreenState extends State<CelebrationScreen>
//     with TickerProviderStateMixin {
//   final ConfettiController _confettiController =
//       ConfettiController(duration: const Duration(seconds: 5));
//   double opacity = 0.0;
//   double scale = 0.7;

//   void _startCelebration() {
//     _confettiController.play();
//     setState(() {
//       opacity = 1.0;
//       scale = 1.0;
//     });
//   }

//   @override
//   void dispose() {
//     _confettiController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Vibrant Radial Gradient Background
//           Container(
//             decoration: BoxDecoration(
//               gradient: RadialGradient(
//                 colors: [
//                   Colors.blue.shade700,
//                   Colors.deepPurple.shade400,
//                   Colors.pink.shade400,
//                 ],
//                 center: Alignment.center,
//                 radius: 1.2,
//               ),
//             ),
//           ),
//           // Celebration Content
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Animated Main Celebration Text
//                 AnimatedOpacity(
//                   duration: Duration(seconds: 2),
//                   opacity: opacity,
//                   child: AnimatedScale(
//                     duration: Duration(seconds: 2),
//                     scale: scale,
//                     curve: Curves.elasticOut,
//                     child: Column(
//                       children: [
//                         Text(
//                           "🎉 100 Days of Flutter 🎉",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 40,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             shadows: [
//                               Shadow(
//                                 blurRadius: 8.0,
//                                 color: Colors.black26,
//                                 offset: Offset(2, 2),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 10),
//                         Text(
//                           "Code Flicks Milestone",
//                           style: TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.white70,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 // Button to Trigger Confetti
//                 ElevatedButton(
//                   onPressed: _startCelebration,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.orangeAccent.shade200,
//                     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     elevation: 8,
//                     shadowColor: Colors.orange.shade800,
//                   ),
//                   child: Text(
//                     "Celebrate with Us!",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Confetti Effect
//           Align(
//             alignment: Alignment.center,
//             child: ConfettiWidget(
//               confettiController: _confettiController,
//               blastDirectionality: BlastDirectionality.explosive,
//               emissionFrequency: 0.1,
//               numberOfParticles: 50,
//               gravity: 0.3,
//               shouldLoop: false,
//               colors: [
//                 Colors.yellow,
//                 Colors.orange,
//                 Colors.greenAccent,
//                 Colors.blue,
//                 Colors.purple,
//                 Colors.white,
//               ],
//             ),
//           ),
//           // Rotating Stars Animation
//           _buildRotatingStars(),
//         ],
//       ),
//     );
//   }

//   Widget _buildRotatingStars() {
//     return Stack(
//       children: [
//         _rotatingStar(Colors.yellow.shade400, 80, Offset(50, 200)),
//         _rotatingStar(Colors.pink.shade300, 100, Offset(300, 400)),
//         _rotatingStar(Colors.lightBlueAccent, 120, Offset(200, 600)),
//       ],
//     );
//   }

//   Widget _rotatingStar(Color color, double size, Offset offset) {
//     return Positioned(
//       left: offset.dx,
//       top: offset.dy,
//       child: AnimatedRotation(
//         duration: Duration(seconds: 5),
//         curve: Curves.easeInOut,
//         turns: 1,
//         child: Icon(
//           Icons.star,
//           size: size,
//           color: color,
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:confetti/confetti.dart';

// class CelebrationScreen extends StatefulWidget {
//   @override
//   _CelebrationScreenState createState() => _CelebrationScreenState();
// }

// class _CelebrationScreenState extends State<CelebrationScreen> {
//   final ConfettiController _confettiController =
//       ConfettiController(duration: const Duration(seconds: 5));
//   bool showDetails = false;

//   void _onCelebrate() {
//     _confettiController.play();
//     setState(() {
//       showDetails = true;
//     });
//   }

//   @override
//   void dispose() {
//     _confettiController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Image (road.jpg)
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: const AssetImage(
//                     'images/road.jpg'), // Make sure to add 'road.jpg' in your assets folder
//                 fit: BoxFit.cover,
//                 colorFilter: ColorFilter.mode(
//                   Colors.black
//                       .withOpacity(0.5), // Darken the image to improve contrast
//                   BlendMode.darken,
//                 ),
//               ),
//             ),
//           ),
//           // Main Content
//           Center(
//             child: Card(
//               color: Colors.white.withAlpha(100),
//               elevation: 100,
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     // Title
//                     const Text(
//                       "100 Days of Flutter",
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         fontSize: 36,
//                         fontWeight: FontWeight.bold,
//                         color: Colors
//                             .white, // Light color for contrast on dark background
//                         letterSpacing: 1.2,
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Text(
//                       "Challenge Completed!",
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Colors
//                             .tealAccent.shade400, // Use a contrasting color
//                       ),
//                     ),
//                     const SizedBox(height: 40),
//                     // Details (Revealed after button click)
//                     if (showDetails)
//                       AnimatedOpacity(
//                         duration: const Duration(seconds: 1),
//                         opacity: showDetails ? 1.0 : 1.0,
//                         child: const Column(
//                           children: [
//                             Text(
//                               "In this journey, I created:",
//                               textAlign: TextAlign.left,
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors
//                                     .amberAccent, // Lighter color for detail text
//                               ),
//                             ),
//                             SizedBox(height: 8),
//                             Text(
//                               "- Widget Tutorials\n"
//                               "- Small App Builds\n"
//                               "- UI Design Videos\n\n"
//                               "All shared on Code Flicks!",
//                               textAlign: TextAlign.left,
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors
//                                     .white, // Lighter color for better readability
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     const SizedBox(height: 40),
//                     // Celebrate Button
//                     ElevatedButton(
//                       onPressed: _onCelebrate,
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.teal.shade400,
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 40, vertical: 20),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         elevation: 8,
//                       ),
//                       child: const Text(
//                         "Celebrate Now!",
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           // Confetti Effect
//           Align(
//             alignment: Alignment.center,
//             child: ConfettiWidget(
//               confettiController: _confettiController,
//               blastDirectionality: BlastDirectionality.explosive,
//               emissionFrequency: 0.04,
//               numberOfParticles: 60,
//               gravity: 0.3,
//               colors: const [
//                 Colors.purple,
//                 Colors.pink,
//                 Colors.blueAccent,
//                 Colors.grey,
//                 Colors.green,
//                 Colors.teal,
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
