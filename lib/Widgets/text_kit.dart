import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MyAnimatedTexKit extends StatefulWidget {
  const MyAnimatedTexKit({super.key});

  @override
  State<MyAnimatedTexKit> createState() => _MyAnimatedTexKitState();
}

class _MyAnimatedTexKitState extends State<MyAnimatedTexKit> {
  int _index = 0; // to track the current animation

  // define animatedTexts as a member variable

  final List<Widget> animatedTexts = [
    SizedBox(
      width: 300,
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText(
            "Welcome to the Code Flicks",
            textStyle:
                const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            colors: [
              Colors.purple,
              Colors.blue,
              Colors.yellow,
              Colors.green,
              Colors.black,
              Colors.red,
            ],
            speed: const Duration(milliseconds: 500),
          ),
        ],
        isRepeatingAnimation: true,
      ),
    ),
    SizedBox(
      width: 300,
      child: DefaultTextStyle(
          style: const TextStyle(fontSize: 20),
          child: AnimatedTextKit(animatedTexts: [
            WavyAnimatedText(
              "Let's Build an App with Flutter ",
              textStyle: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
              speed: const Duration(milliseconds: 180),
            ),
          ])),
    ),
    SizedBox(
      width: 300,
      child: TextLiquidFill(
        text: "Subscribe to Code Flicks!",
        waveColor: Colors.blue[300]!,
        waveDuration: const Duration(seconds: 1),
        boxBackgroundColor: Colors.purple[400]!,
        textStyle: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        boxHeight: 100,
      ),
    ),
  ];

  void _nextAnimation() {
    setState(() {
      _index = (_index + 1) % animatedTexts.length; // cycle through
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animated Text Kit',
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            animatedTexts[_index], // access current animation based on index
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _nextAnimation,
        tooltip: 'Next Animation',
        child: const Icon(
          Icons.play_arrow,
          size: 34,
        ),
      ),
    );
  }
}
