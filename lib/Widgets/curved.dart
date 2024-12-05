import 'package:flutter/material.dart';

class MyCurvedAnimation extends StatefulWidget {
  const MyCurvedAnimation({super.key});

  @override
  State<MyCurvedAnimation> createState() => _MyCurvedAnimationState();
}

class _MyCurvedAnimationState extends State<MyCurvedAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _curvedAnimation;
  @override
  void initState() {
    super.initState();

    // initialize the animationController
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    // create a CurvedAnimation
    _curvedAnimation = CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceInOut,
        reverseCurve: Curves.elasticInOut);

    // start the animation in a loop
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    // dispose the controller to free resources
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        title: const Text(
          'C u r v e d A n i m a t i o n',
          style: TextStyle(fontSize: 26, color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: AnimatedBuilder(
            animation: _curvedAnimation,
            builder: (context, child) {
              return Transform.scale(
                scale:
                    _curvedAnimation.value * 1.2 + 0.8, // smooth scaling range
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 30,
                        spreadRadius: 10,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'images/spider.jpg',
                    fit: BoxFit.cover,
                    width: 250,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
