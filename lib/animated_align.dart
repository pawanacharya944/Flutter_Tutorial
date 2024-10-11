import 'package:flutter/material.dart';

class MyAnimatedAlign extends StatelessWidget {
  const MyAnimatedAlign({super.key});

  static const Duration duration = Duration(seconds: 1); // animation duration
  static const Curve curve = Curves.fastOutSlowIn; // curve for the animation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AnimatedAlign',
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: const Animated_Align(duration: duration, curve: curve),
    );
  }
}

class Animated_Align extends StatefulWidget {
  const Animated_Align({
    required this.duration,
    required this.curve,
    super.key,
  });
  final Duration duration;
  final Curve curve;

  @override
  State<Animated_Align> createState() => _Animated_AlignState();
}

class _Animated_AlignState extends State<Animated_Align> {
  bool selected =
      false; // state variable to track whether the alignment is selected
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // toggle the selected state when tapped
        setState(() {
          selected = !selected; // switch between true and false on tap
        });
      },
      child: Center(
        child: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green[200]!,
                Colors.blue[200]!,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: AnimatedAlign(
            alignment: selected
                ? Alignment.topRight
                : Alignment.bottomLeft, // change alignment based on state
            duration: widget.duration, // use duration from widget properties
            curve: widget.curve, // use curve from widget properties
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  15), // rounded corners for the image display area
              child: Image.asset(
                'images/programmer.jpg',
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
