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

// class RealisticSpeedometerPage extends StatelessWidget {
//   const RealisticSpeedometerPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text(
//           'Sport Car Speedometer',
//           style: TextStyle(
//               fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.transparent,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.black, Colors.grey[900]!],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Speedometer
//               SfRadialGauge(
//                 axes: <RadialAxis>[
//                   RadialAxis(
//                     startAngle: 140,
//                     endAngle: 40,
//                     minimum: 0,
//                     maximum: 240,
//                     radiusFactor: 0.9,
//                     majorTickStyle: const MajorTickStyle(
//                       length: 12,
//                       thickness: 2,
//                       color: Colors.white,
//                     ),
//                     minorTicksPerInterval: 4,
//                     minorTickStyle: const MinorTickStyle(
//                       length: 6,
//                       thickness: 1,
//                       color: Colors.grey,
//                     ),
//                     axisLineStyle: const AxisLineStyle(
//                       thickness: 15,
//                       gradient: SweepGradient(
//                         colors: [
//                           Colors.green,
//                           Colors.yellow,
//                           Colors.orange,
//                           Colors.red,
//                         ],
//                         stops: [0.25, 0.5, 0.75, 1.0],
//                       ),
//                     ),
//                     axisLabelStyle: const GaugeTextStyle(
//                       fontSize: 14,
//                       color: Colors.white,
//                     ),
//                     pointers: <GaugePointer>[
//                       NeedlePointer(
//                         value: 120,
//                         enableAnimation: true,
//                         animationType: AnimationType.easeOutBack,
//                         needleColor: Colors.white,
//                         needleStartWidth: 1,
//                         needleEndWidth: 5,
//                         needleLength: 0.75,
//                         animationDuration: 2000,
//                         gradient: const LinearGradient(
//                             colors: [Colors.white, Colors.red]),
//                         knobStyle: KnobStyle(
//                           color: Colors.purple,
//                           borderColor: Colors.blue.withAlpha(100),
//                           borderWidth: 1,
//                         ),
//                       ),
//                     ],
//                     ranges: <GaugeRange>[
//                       GaugeRange(
//                         startValue: 0,
//                         endValue: 30,
//                         color: Colors.pink,
//                         startWidth: 15,
//                         endWidth: 15,
//                       ),
//                       GaugeRange(
//                         startValue: 30,
//                         endValue: 80,
//                         color: Colors.green,
//                         startWidth: 15,
//                         endWidth: 15,
//                       ),
//                       GaugeRange(
//                         startValue: 80,
//                         endValue: 160,
//                         color: Colors.amber,
//                         startWidth: 15,
//                         endWidth: 15,
//                       ),
//                       GaugeRange(
//                         startValue: 160,
//                         endValue: 240,
//                         color: Colors.red,
//                         startWidth: 15,
//                         endWidth: 15,
//                       ),
//                     ],
//                     annotations: <GaugeAnnotation>[
//                       GaugeAnnotation(
//                         widget: Column(
//                           children: [
//                             Text(
//                               '120',
//                               style: TextStyle(
//                                 fontSize: 50,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.teal,
//                                 shadows: [
//                                   Shadow(
//                                     color: Colors.white,
//                                     blurRadius: 20,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             const Text(
//                               'km/h',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ],
//                         ),
//                         angle: 90,
//                         positionFactor: 0.75,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 30),

//               // Dashboard Stats
//               Container(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
//                 decoration: BoxDecoration(
//                   color: Colors.black.withOpacity(0.7),
//                   borderRadius: BorderRadius.circular(20),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.9),
//                       blurRadius: 15,
//                       spreadRadius: 5,
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         _buildDashboardStat('RPM', '7000', Colors.tealAccent),
//                         _buildDashboardStat('Fuel', '65%', Colors.orangeAccent),
//                         _buildDashboardStat('Temp', '92°C', Colors.redAccent),
//                       ],
//                     ),
//                     const SizedBox(height: 15),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         _buildDashboardStat(
//                             'Battery', '12.8V', Colors.pinkAccent),
//                         _buildDashboardStat('Gear', 'D', Colors.white),
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

//   Widget _buildDashboardStat(String title, String value, Color color) {
//     return Column(
//       children: [
//         Text(
//           title,
//           style: TextStyle(
//             fontSize: 14,
//             color: Colors.white.withOpacity(0.7),
//           ),
//         ),
//         const SizedBox(height: 5),
//         Text(
//           value,
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: color,
//             shadows: [
//               Shadow(
//                 color: color,
//                 blurRadius: 10,
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';

// class RealisticSpeedometerPage extends StatefulWidget {
//   const RealisticSpeedometerPage({Key? key}) : super(key: key);

//   @override
//   State<RealisticSpeedometerPage> createState() =>
//       _RealisticSpeedometerPageState();
// }

// class _RealisticSpeedometerPageState extends State<RealisticSpeedometerPage> {
//   final ValueNotifier<double> _speed = ValueNotifier<double>(120);

//   void _accelerate() {
//     _speed.value = (_speed.value + 100).clamp(0, 240);
//   }

//   void _brake() {
//     _speed.value = (_speed.value - 80).clamp(0, 240);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text(
//           'Sport Car Speedometer',
//           style: TextStyle(
//               fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.transparent,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.black, Colors.grey[900]!],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ValueListenableBuilder<double>(
//               valueListenable: _speed,
//               builder: (context, value, child) {
//                 return SfRadialGauge(
//                   axes: <RadialAxis>[
//                     RadialAxis(
//                       startAngle: 140,
//                       endAngle: 40,
//                       minimum: 0,
//                       maximum: 240,
//                       radiusFactor: 0.9,
//                       majorTickStyle: const MajorTickStyle(
//                         length: 12,
//                         thickness: 2,
//                         color: Colors.white,
//                       ),
//                       minorTicksPerInterval: 4,
//                       minorTickStyle: const MinorTickStyle(
//                         length: 6,
//                         thickness: 1,
//                         color: Colors.grey,
//                       ),
//                       axisLineStyle: const AxisLineStyle(
//                         thickness: 15,
//                         gradient: SweepGradient(
//                           colors: [
//                             Colors.green,
//                             Colors.yellow,
//                             Colors.orange,
//                             Colors.red,
//                           ],
//                           stops: [0.25, 0.5, 0.75, 1.0],
//                         ),
//                       ),
//                       axisLabelStyle: const GaugeTextStyle(
//                         fontSize: 14,
//                         color: Colors.white,
//                       ),
//                       pointers: <GaugePointer>[
//                         NeedlePointer(
//                           value: value,
//                           enableAnimation: true,
//                           animationType: AnimationType.ease,
//                           needleColor: Colors.white,
//                           needleStartWidth: 1,
//                           needleEndWidth: 5,
//                           needleLength: 0.75,
//                           animationDuration: 500,
//                           gradient: const LinearGradient(
//                               colors: [Colors.white, Colors.red]),
//                           knobStyle: KnobStyle(
//                             color: Colors.purple,
//                             borderColor: Colors.blue.withAlpha(100),
//                             borderWidth: 1,
//                           ),
//                         ),
//                       ],
//                       annotations: <GaugeAnnotation>[
//                         GaugeAnnotation(
//                           widget: Column(
//                             children: [
//                               Text(
//                                 value.toInt().toString(),
//                                 style: TextStyle(
//                                   fontSize: 50,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.teal,
//                                   shadows: [
//                                     Shadow(
//                                       color: Colors.white,
//                                       blurRadius: 20,
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               const Text(
//                                 'km/h',
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           angle: 90,
//                           positionFactor: 0.75,
//                         ),
//                       ],
//                     ),
//                   ],
//                 );
//               },
//             ),
//             const SizedBox(height: 30),

//             // Dashboard Stats
//             Container(
//               padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
//               decoration: BoxDecoration(
//                 color: Colors.black.withOpacity(0.7),
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.9),
//                     blurRadius: 15,
//                     spreadRadius: 5,
//                   ),
//                 ],
//               ),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       _buildDashboardStat('RPM', '7000', Colors.tealAccent),
//                       _buildDashboardStat('Fuel', '65%', Colors.orangeAccent),
//                       _buildDashboardStat('Temp', '92°C', Colors.redAccent),
//                     ],
//                   ),
//                   const SizedBox(height: 15),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       _buildDashboardStat(
//                           'Battery', '12.8V', Colors.pinkAccent),
//                       _buildDashboardStat('Gear', 'D', Colors.white),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 30),

//             // Control Buttons
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: _accelerate,
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 30,
//                       vertical: 15,
//                     ),
//                     backgroundColor: Colors.green,
//                   ),
//                   child: const Text(
//                     'Paddle',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: _brake,
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 30,
//                       vertical: 15,
//                     ),
//                     backgroundColor: Colors.red,
//                   ),
//                   child: const Text(
//                     'Brake',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

// Widget _buildDashboardStat(String title, String value, Color color) {
//   return Column(
//     children: [
//       Text(
//         title,
//         style: TextStyle(
//           fontSize: 14,
//           color: Colors.white.withOpacity(0.7),
//         ),
//       ),
//       const SizedBox(height: 5),
//       Text(
//         value,
//         style: TextStyle(
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//           color: color,
//           shadows: [
//             Shadow(
//               color: color,
//               blurRadius: 10,
//             ),
//           ],
//         ),
//       ),
//     ],
//   );
// }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';

// class RealisticSpeedometerPage extends StatefulWidget {
//   const RealisticSpeedometerPage({Key? key}) : super(key: key);

//   @override
//   _RealisticSpeedometerPageState createState() =>
//       _RealisticSpeedometerPageState();
// }

// class _RealisticSpeedometerPageState extends State<RealisticSpeedometerPage> {
//   final ValueNotifier<double> _speedNotifier = ValueNotifier(0.0);
//   late final Ticker _ticker;
//   bool _isAccelerating = false;

//   @override
//   void initState() {
//     super.initState();
//     _ticker = Ticker(_updateSpeed);
//   }

//   void _updateSpeed(Duration elapsed) {
//     if (_isAccelerating) {
//       setState(() {
//         _speedNotifier.value =
//             (_speedNotifier.value + elapsed.inMilliseconds * 0.002)
//                 .clamp(0.0, 240.0);
//       });
//     }
//   }

//   void _toggleAcceleration() {
//     setState(() {
//       _isAccelerating = !_isAccelerating;
//       if (_isAccelerating) {
//         _ticker.start();
//       } else {
//         _ticker.stop();
//       }
//     });
//   }

//   void _applyBrake() {
//     setState(() {
//       _isAccelerating = false;
//       _ticker.stop();
//       _speedNotifier.value = 0.0;
//     });
//   }

//   @override
//   void dispose() {
//     _ticker.dispose();
//     _speedNotifier.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text(
//           'S P E E D O M E T E R',
//           style: TextStyle(
//               fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.transparent,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.black, Colors.grey[900]!],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Speedometer
//               ValueListenableBuilder<double>(
//                 valueListenable: _speedNotifier,
//                 builder: (context, speed, child) {
//                   return SfRadialGauge(
//                     axes: <RadialAxis>[
//                       RadialAxis(
//                         startAngle: 140,
//                         endAngle: 40,
//                         minimum: 0,
//                         maximum: 240,
//                         radiusFactor: 0.9,
//                         majorTickStyle: const MajorTickStyle(
//                           length: 12,
//                           thickness: 2,
//                           color: Colors.white,
//                         ),
//                         minorTicksPerInterval: 4,
//                         minorTickStyle: const MinorTickStyle(
//                           length: 6,
//                           thickness: 1,
//                           color: Colors.grey,
//                         ),
//                         axisLineStyle: const AxisLineStyle(
//                           thickness: 15,
//                           gradient: SweepGradient(
//                             colors: [
//                               Colors.green,
//                               Colors.yellow,
//                               Colors.orange,
//                               Colors.red,
//                             ],
//                             stops: [0.25, 0.5, 0.75, 1.0],
//                           ),
//                         ),
//                         axisLabelStyle: const GaugeTextStyle(
//                           fontSize: 14,
//                           color: Colors.white,
//                         ),
//                         pointers: <GaugePointer>[
//                           NeedlePointer(
//                             value: speed,
//                             enableAnimation: true,
//                             animationType: AnimationType.easeOutBack,
//                             needleColor: Colors.white,
//                             needleStartWidth: 1,
//                             needleEndWidth: 5,
//                             needleLength: 0.75,
//                             animationDuration: 2000,
//                             gradient: const LinearGradient(
//                                 colors: [Colors.white, Colors.red]),
//                             knobStyle: KnobStyle(
//                               color: Colors.purple,
//                               borderColor: Colors.blue.withAlpha(100),
//                               borderWidth: 1,
//                             ),
//                           ),
//                         ],
//                         ranges: <GaugeRange>[
//                           GaugeRange(
//                             startValue: 0,
//                             endValue: 30,
//                             color: Colors.pink,
//                             startWidth: 15,
//                             endWidth: 15,
//                           ),
//                           GaugeRange(
//                             startValue: 30,
//                             endValue: 80,
//                             color: Colors.green,
//                             startWidth: 15,
//                             endWidth: 15,
//                           ),
//                           GaugeRange(
//                             startValue: 80,
//                             endValue: 160,
//                             color: Colors.amber,
//                             startWidth: 15,
//                             endWidth: 15,
//                           ),
//                           GaugeRange(
//                             startValue: 160,
//                             endValue: 240,
//                             color: Colors.red,
//                             startWidth: 15,
//                             endWidth: 15,
//                           ),
//                         ],
//                         annotations: <GaugeAnnotation>[
//                           GaugeAnnotation(
//                             widget: Column(
//                               children: [
//                                 Text(
//                                   speed.toStringAsFixed(0),
//                                   style: TextStyle(
//                                     fontSize: 50,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.teal,
//                                     shadows: [
//                                       Shadow(
//                                         color: Colors.white,
//                                         blurRadius: 20,
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 const Text(
//                                   'km/h',
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             angle: 90,
//                             positionFactor: 0.75,
//                           ),
//                         ],
//                       ),
//                     ],
//                   );
//                 },
//               ),
//               const SizedBox(height: 50),

//               Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       _buildDashboardStat('RPM', '7000', Colors.tealAccent),
//                       _buildDashboardStat('Fuel', '65%', Colors.orangeAccent),
//                       _buildDashboardStat('Temp', '92°C', Colors.redAccent),
//                     ],
//                   ),
//                   const SizedBox(height: 15),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       _buildDashboardStat(
//                           'Battery', '12.8V', Colors.pinkAccent),
//                       _buildDashboardStat('Gear', 'D', Colors.white),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(height: 60),

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   ElevatedButton(
//                     onPressed: _toggleAcceleration,
//                     style: ElevatedButton.styleFrom(
//                       padding:
//                           EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                       backgroundColor: _isAccelerating
//                           ? Colors.red
//                           : Colors.green, // Dynamic color change
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       elevation: 5,
//                     ),
//                     child: Text(
//                       _isAccelerating ? 'Stop' : 'Accelerate',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: _applyBrake,
//                     style: ElevatedButton.styleFrom(
//                       padding:
//                           EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                       backgroundColor: Colors.indigoAccent, // Button color
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       elevation: 5,
//                     ),
//                     child: const Text(
//                       'Brake',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Widget _buildDashboardStat(String title, String value, Color color) {
//   return Column(
//     children: [
//       Text(
//         title,
//         style: TextStyle(
//           fontSize: 14,
//           color: Colors.white.withOpacity(0.7),
//         ),
//       ),
//       const SizedBox(height: 5),
//       Text(
//         value,
//         style: TextStyle(
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//           color: color,
//           shadows: [
//             Shadow(
//               color: color,
//               blurRadius: 10,
//             ),
//           ],
//         ),
//       ),
//     ],
//   );
// }
