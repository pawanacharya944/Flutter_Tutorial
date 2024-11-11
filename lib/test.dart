// import 'package:flutter/material.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';

// class MyText extends StatefulWidget {
//   @override
//   _MyTextState createState() => _MyTextState();
// }

// class _MyTextState extends State<MyText> {
//   int _index = 0; // To track the current animation

//   // List of animated text widgets

//   void _nextAnimation() {
//     setState(() {
//       _index = (_index + 1) % 3; // Cycle through animations
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Animated Text Kit')),
//       body: Center(
//           child: [
//         // Colorize Animated Text
//         SizedBox(
//           width: 300.0,
//           child: AnimatedTextKit(
//             animatedTexts: [
//               ColorizeAnimatedText(
//                 'Welcome to the Code Flicks',
//                 textStyle:
//                     TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
//                 colors: [
//                   Colors.purple,
//                   Colors.blue,
//                   Colors.yellow,
//                   Colors.green,
//                   Colors.red,
//                 ],
//                 speed: Duration(milliseconds: 300),
//               ),
//             ],
//             isRepeatingAnimation: true,
//           ),
//         ),

//         SizedBox(
//           child: DefaultTextStyle(
//             style: const TextStyle(
//               fontSize: 20.0,
//             ),
//             child: AnimatedTextKit(
//               animatedTexts: [
//                 WavyAnimatedText("Let's  build  an  app  with  Flutter",
//                     textStyle: const TextStyle(
//                         fontSize: 24.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                     speed: Duration(milliseconds: 180)),
//               ],
//             ),
//           ),
//         ),

//         SizedBox(
//           width: 300.0,
//           child: TextLiquidFill(
//             text: 'Flutter is Awesome!',
//             waveColor: Colors.blue[200]!,
//             waveDuration: Duration(seconds: 1),
//             boxBackgroundColor: Colors.purple[400]!,
//             textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//             boxHeight: 100, // Adjust the height as needed
//           ),
//         ),
//       ][_index]), // Display current animation
//       floatingActionButton: FloatingActionButton(
//         onPressed: _nextAnimation,
//         tooltip: 'Next Animation',
//         child: Icon(Icons.play_arrow),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';

// class MyText extends StatefulWidget {
//   @override
//   _MyTextState createState() => _MyTextState();
// }

// class _MyTextState extends State<MyText> {
//   int _index = 0; // To track the current animation

//   void _nextAnimation() {
//     setState(() {
//       _index = (_index + 1) % 3; // Cycle through animations
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // List of animated text widgets
//     final List<Widget> animatedTexts = [
//       // Colorize Animated Text
//       SizedBox(
//         width: 300.0,
//         child: AnimatedTextKit(
//           animatedTexts: [
//             ColorizeAnimatedText(
//               'Welcome to the Code Flicks!',
//               textStyle: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
//               colors: [
//                 Colors.purple,
//                 Colors.blue,
//                 Colors.yellow,
//                 Colors.green,
//                 Colors.red,
//               ],
//               speed: Duration(milliseconds: 300),
//             ),
//           ],
//           isRepeatingAnimation: true,
//         ),
//       ),

//       // Wavy Animated Text
//       SizedBox(
//         width: 300.0,
//         child: DefaultTextStyle(
//           style: const TextStyle(fontSize: 20.0),
//           child: AnimatedTextKit(
//             animatedTexts: [
//               WavyAnimatedText(
//                 "Let's build an app with Flutter",
//                 textStyle: const TextStyle(
//                   fontSize: 24.0,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.redAccent,
//                 ),
//                 speed: Duration(milliseconds: 180),
//               ),
//             ],
//           ),
//         ),
//       ),

//       // Text Liquid Fill
//       SizedBox(
//         width: 300.0,
//         child: TextLiquidFill(
//           text: 'Flutter is Awesome!',
//           waveColor: Colors.blue[200]!,
//           waveDuration: Duration(seconds: 1),
//           boxBackgroundColor: Colors.purple[400]!,
//           textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//           boxHeight: 100, // Adjust the height as needed
//         ),
//       ),
//     ];

//     return Scaffold(
//       appBar: AppBar(
//           title: Text(
//         'Animated Text Kit',
//         style: TextStyle(fontSize: 28),
//       )),
//       body: Center(
//         child: Column(
//           // Use Column to arrange widgets vertically
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             animatedTexts[_index], // Display current animation based on index
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _nextAnimation,
//         tooltip: 'Next Animation',
//         child: Icon(Icons.play_arrow),
//       ),
//     );
//   }
// }
