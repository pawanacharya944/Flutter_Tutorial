import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyLottie extends StatefulWidget {
  const MyLottie({super.key});

  @override
  State<MyLottie> createState() => _MyLottieState();
}

class _MyLottieState extends State<MyLottie> with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    // initialize the AnimationController with a vsync provider
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    // dispose of the controller when the widget is removed from the widget tree
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lottie Animation',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.blue[100],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue[100]!,
              Colors.green[100]!,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Lottie.network(
              'https://lottie.host/6d338f36-d1f2-460e-bde4-1ef35c7e5567/bsHnGKDuNf.json',
              controller: _controller, onLoaded: (composition) {
            // configure the AnimationController with the duration of the lottie file
            _controller
              ..duration = composition.duration // set duration from composition
              ..forward(); // start the animation
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // control the animation playback with a button press

          if (_controller.isAnimating) {
            _controller.stop(); // stop the animation if it's currently playing
          } else {
            _controller.repeat(); // repeat the animation if it's stopped
          }
        },
        child: const Icon(
          Icons.play_arrow,
          size: 40,
        ),
      ),
    );
  }
}
