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
// import 'package:flutter/material.dart';

// class RangeSliderExample extends StatefulWidget {
//   @override
//   _RangeSliderExampleState createState() => _RangeSliderExampleState();
// }

// class _RangeSliderExampleState extends State<RangeSliderExample> {
//   // Initial range values
//   RangeValues _currentRangeValues = const RangeValues(20, 80);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text("R a n g e  S l i d e r"),
//         backgroundColor: Colors.transparent,
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.teal.shade200, Colors.blue.shade300],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               "Select a range:",
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: const [
//                 Text(
//                   "Start",
//                   style: TextStyle(fontSize: 16, color: Colors.white),
//                 ),
//                 Text(
//                   "End",
//                   style: TextStyle(fontSize: 16, color: Colors.white),
//                 ),
//               ],
//             ),
//             RangeSlider(
//               values: _currentRangeValues,
//               min: 0, // Minimum value
//               max: 100, // Maximum value
//               divisions: 10, // Number of divisions
//               labels: RangeLabels(
//                 _currentRangeValues.start.round().toString(),
//                 _currentRangeValues.end.round().toString(),
//               ),
//               activeColor: Colors.white, // Active range color
//               inactiveColor: Colors.blueGrey.shade400, // Inactive range color
//               onChanged: (RangeValues values) {
//                 setState(() {
//                   _currentRangeValues = values;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     backgroundColor: Colors.white10,
//                     content: Text(
//                       "The selected range is: ${_currentRangeValues.start.round()} to ${_currentRangeValues.end.round()}",
//                       style: const TextStyle(color: Colors.black, fontSize: 18),
//                     ),
//                   ),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.white,
//                 foregroundColor: Colors.teal,
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//               child: const Text(
//                 "Confirm Selected",
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class DatePickerScreen extends StatefulWidget {
//   @override
//   _DatePickerScreenState createState() => _DatePickerScreenState();
// }

// class _DatePickerScreenState extends State<DatePickerScreen> {
//   // Variable to store selected date
//   DateTime selectedDate = DateTime.now();

//   // Function to pick date
//   Future<void> _selectDate(BuildContext context) async {
//     // Show Date Picker and await for selected date
//     final DateTime picked = await showDatePicker(
//           context: context,
//           initialDate: selectedDate, // Set the current date as initial date
//           firstDate: DateTime(2000), // Set the minimum selectable date
//           lastDate: DateTime(2101), // Set the maximum selectable date
//         ) ??
//         selectedDate;

//     if (picked != null && picked != selectedDate) {
//       setState(() {
//         selectedDate = picked; // Update the selected date
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Date Picker"),
//         centerTitle: true, // Center the title
//         backgroundColor: Colors.blueAccent, // App bar background color
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Card(
//             elevation: 5, // Add elevation for shadow effect
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15), // Rounded corners
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     "Select a Date",
//                     style: Theme.of(context)
//                         .textTheme
//                         .titleLarge, // Custom text style
//                   ),
//                   SizedBox(height: 20),
//                   // Date Display
//                   Text(
//                     "${selectedDate.toLocal()}"
//                         .split(' ')[0], // Display only the date part
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueAccent,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   // Date Picker Button
//                   ElevatedButton(
//                     onPressed: () =>
//                         _selectDate(context), // Trigger date picker
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blueAccent, // Button color
//                       foregroundColor: Colors.white, // Button text color
//                       shape: RoundedRectangleBorder(
//                         borderRadius:
//                             BorderRadius.circular(15), // Rounded button corners
//                       ),
//                       padding: EdgeInsets.symmetric(
//                           horizontal: 40, vertical: 12), // Button padding
//                     ),
//                     child: Text("Pick Date"),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class DatePickerScreen extends StatefulWidget {
//   @override
//   _DatePickerScreenState createState() => _DatePickerScreenState();
// }

// class _DatePickerScreenState extends State<DatePickerScreen> {
//   DateTime selectedDate = DateTime.now();

//   // Function to pick date
//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime picked = await showDatePicker(
//           context: context,
//           initialDate: selectedDate,
//           firstDate: DateTime(2000),
//           lastDate: DateTime(2101),
//         ) ??
//         selectedDate;

//     if (picked != null && picked != selectedDate) {
//       setState(() {
//         selectedDate = picked;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Background gradient
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.teal.shade200, Colors.blue.shade200],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Card(
//               elevation: 10, // Added a higher elevation for a prominent look
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(30.0),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     // Heading with some extra spacing and custom font
//                     const Text(
//                       "Select a Date",
//                       style: TextStyle(
//                         fontSize: 28,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     // Date display with modern styling
//                     Text(
//                       "${selectedDate.toLocal()}".split(' ')[0],
//                       style: const TextStyle(
//                         fontSize: 32,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.lightBlue,
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     // Button with a custom design
//                     ElevatedButton.icon(
//                       onPressed: () => _selectDate(context),
//                       icon: const Icon(
//                         Icons.calendar_today,
//                         color: Colors.black,
//                       ), // Calendar icon
//                       label: const Text(
//                         "Pick Date",
//                         style: TextStyle(fontSize: 18),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.green.shade300,
//                         foregroundColor: Colors.black,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 30, vertical: 15),
//                       ),
//                     ),
//                   ],
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

// class MyLetterCounter extends StatefulWidget {
//   @override
//   _MyLetterCounterState createState() => _MyLetterCounterState();
// }

// class _MyLetterCounterState extends State<MyLetterCounter> {
//   // Controller to handle text input
//   TextEditingController _controller = TextEditingController();

//   // Function to count characters in the input text
//   int _countLetters(String input) {
//     return input.length;
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Using Scaffold to structure the page
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Letter Counter',
//           style: TextStyle(fontSize: 26),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Animated text display for input
//             AnimatedContainer(
//               duration: const Duration(milliseconds: 300),
//               padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//               decoration: BoxDecoration(
//                 color: Colors.blue.shade200,
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Colors.black26,
//                     offset: Offset(0, 4),
//                     blurRadius: 8,
//                   ),
//                 ],
//               ),
//               child: TextField(
//                 controller: _controller,
//                 maxLines: 5,
//                 decoration: const InputDecoration(
//                   border: InputBorder.none,
//                   hintText: 'Type something...',
//                   hintStyle: TextStyle(color: Colors.blueGrey),
//                 ),
//                 style: const TextStyle(fontSize: 18, color: Colors.black),
//                 onChanged: (text) {
//                   setState(() {});
//                 },
//               ),
//             ),
//             const SizedBox(height: 20),

//             // Display the number of characters with style
//             const Text(
//               'Character Count:',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 20),
//             Container(
//               padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//               decoration: BoxDecoration(
//                 color: Colors.green.shade50,
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Colors.black26,
//                     offset: Offset(0, 4),
//                     blurRadius: 8,
//                   ),
//                 ],
//               ),
//               child: Text(
//                 '${_countLetters(_controller.text)}', // Show the character count
//                 style: TextStyle(
//                   fontSize: 48,
//                   fontWeight: FontWeight.w600,
//                   color: Colors.green.shade700,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 30),

//             // Reset button with animation and styling
//             ElevatedButton(
//               onPressed: () {
//                 _controller.clear(); // Clear the text input
//                 setState(() {});
//               },
//               child: Text(
//                 'Clear Text',
//                 style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               ),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.red.shade500, // Button color
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class SliverListExample extends StatelessWidget {
//   // Sample data for the SliverList
//   final List<String> items = List.generate(20, (index) => "Item #$index");

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Using CustomScrollView to combine different types of slivers
//       body: CustomScrollView(
//         slivers: [
//           // SliverAppBar that expands and collapses
//           SliverAppBar(
//             expandedHeight: 200.0,
//             pinned: true, // Keeps the app bar visible after scrolling
//             backgroundColor: Colors.indigo.shade200,
//             flexibleSpace: FlexibleSpaceBar(
//               title: const Text(
//                 'Sliver List Example',
//                 style: TextStyle(color: Colors.white),
//               ),
//               background: Image.asset(
//                 'images/snow.jpg', // Add your asset image here
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // SliverToBoxAdapter for custom widgets like Headers
//           const SliverToBoxAdapter(
//             child: Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Text(
//                 'Sliver List of Items:',
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.indigoAccent,
//                 ),
//               ),
//             ),
//           ),

//           // SliverList widget
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 // Build a beautiful item with dynamic background
//                 return Container(
//                   margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
//                   decoration: BoxDecoration(
//                     color: Colors
//                         .primaries[index % Colors.primaries.length].shade200,
//                     borderRadius: BorderRadius.circular(10.0),
//                     boxShadow: const [
//                       BoxShadow(
//                         color: Colors.black26,
//                         offset: Offset(0, 4),
//                         blurRadius: 4.0,
//                       ),
//                     ],
//                   ),
//                   child: ListTile(
//                     contentPadding: EdgeInsets.all(16.0),
//                     title: Text(
//                       items[index],
//                       style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.black87,
//                       ),
//                     ),
//                     subtitle: const Text(
//                       'There is something inside the list',
//                       style: TextStyle(color: Colors.black54),
//                     ),
//                     leading: const Icon(
//                       Icons.list,
//                       color: Colors.indigo,
//                     ),
//                     trailing: const Icon(
//                       Icons.arrow_forward_ios,
//                       color: Colors.indigo,
//                     ),
//                     onTap: () {
//                       // Handle item tap (optional)
//                       print('Tapped on ${items[index]}');
//                     },
//                   ),
//                 );
//               },
//               childCount: items.length, // Total number of items
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class DividerExampleScreen extends StatelessWidget {
//   const DividerExampleScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Divider'),
//         backgroundColor: Colors.indigo.shade200,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // Title Section
//             const Text(
//               'My Day Overview',
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.indigo,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 10),

//             // First Divider - Thin and subtle
//             Divider(
//               color: Colors.indigo.shade100, // Subtle color
//               thickness: 1,
//               endIndent: 20, // Right-side spacing
//               indent: 20, // Left-side spacing
//             ),
//             const SizedBox(height: 10),

//             // Morning Section
//             const SectionTitle(title: 'Morning'),
//             Divider(
//               color: Colors.orange, // Bright color for morning
//               thickness: 2,
//               indent: 40, // Left-side padding for emphasis
//               endIndent: 40, // Right-side padding for symmetry
//             ),
//             const ActivityTile(
//               icon: Icons.wb_sunny,
//               title: 'Morning Walk',
//               subtitle: 'Enjoyed a peaceful 30-minute walk.',
//             ),
//             const ActivityTile(
//               icon: Icons.coffee,
//               title: 'Coffee Time',
//               subtitle: 'Started the day with a strong espresso.',
//             ),

//             const SizedBox(height: 20),

//             // Afternoon Section
//             const SectionTitle(title: 'Afternoon'),
//             Divider(
//               color: Colors.blue, // Cool color for afternoon
//               thickness: 3,
//               indent: 20,
//               endIndent: 20,
//               height: 20, // Extra space around the divider
//             ),
//             const ActivityTile(
//               icon: Icons.lunch_dining,
//               title: 'Lunch Break',
//               subtitle: 'Had a healthy salad with friends.',
//             ),
//             const ActivityTile(
//               icon: Icons.book,
//               title: 'Learning Time',
//               subtitle: 'Read a few chapters of a Flutter book.',
//             ),

//             const SizedBox(height: 20),

//             // Evening Section
//             const SectionTitle(title: 'Evening'),
//             Divider(
//               color: Colors.purple, // Deep color for evening
//               thickness: 2,
//               indent: 60, // Extra padding for a sleek effect
//               endIndent: 60,
//             ),
//             const ActivityTile(
//               icon: Icons.movie,
//               title: 'Movie Night',
//               subtitle: 'Watched a thrilling mystery movie.',
//             ),
//             const ActivityTile(
//               icon: Icons.bed,
//               title: 'Relaxation',
//               subtitle: "Prepared for a restful night's sleep.",
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // A reusable widget for section titles
// class SectionTitle extends StatelessWidget {
//   final String title;

//   const SectionTitle({Key? key, required this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       title,
//       style: const TextStyle(
//         fontSize: 22,
//         fontWeight: FontWeight.w600,
//         color: Colors.indigo,
//       ),
//     );
//   }
// }

// // A reusable widget for activity tiles
// class ActivityTile extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final String subtitle;

//   const ActivityTile({
//     Key? key,
//     required this.icon,
//     required this.title,
//     required this.subtitle,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Icon(icon, size: 32),
//       title: Text(
//         title,
//         style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//       ),
//       subtitle: Text(subtitle),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class MyDivider extends StatelessWidget {
//   const MyDivider({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'D i v i d e r',
//           style: TextStyle(fontSize: 28),
//         ),
//         backgroundColor: Colors.teal.shade100,
//       ),
//       body: const Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Title Section
//             Text(
//               'Daily Activities',
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.green,
//               ),
//             ),
//             SizedBox(height: 20),

//             // Morning Section
//             Text(
//               'Morning',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.deepOrange,
//               ),
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.wb_sunny,
//                 color: Colors.deepOrange,
//                 size: 28,
//               ),
//               title: Text(
//                 'Morning Walk',
//                 style: TextStyle(fontSize: 18),
//               ),
//               subtitle: Text('30-minute peaceful walk.'),
//             ),
//             Divider(
//               color: Colors.deepOrange,
//               thickness: 2,
//               indent: 40,
//               endIndent: 40,
//             ),

//             // Afternoon Section
//             Text(
//               'Afternoon',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.brown,
//               ),
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.book,
//                 color: Colors.brown,
//                 size: 28,
//               ),
//               title: Text(
//                 'Learning Flutter',
//                 style: TextStyle(fontSize: 18),
//               ),
//               subtitle: Text('Studied Flutter for 2 hours.'),
//             ),
//             Divider(
//               color: Colors.brown,
//               thickness: 2,
//               indent: 40,
//               endIndent: 40,
//             ),

//             // Evening Section
//             Text(
//               'Evening',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.indigo,
//               ),
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.movie,
//                 color: Colors.indigo,
//                 size: 28,
//               ),
//               title: Text(
//                 'Movie Night',
//                 style: TextStyle(fontSize: 18),
//               ),
//               subtitle: Text('Watched a sci-fi movie.'),
//             ),
//             Divider(
//               color: Colors.indigo,
//               thickness: 2,
//               indent: 40,
//               endIndent: 40,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
