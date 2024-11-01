import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MyAnimatedText extends StatelessWidget {
  const MyAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/dev.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 100, // this is the height of the marquee container
            child: Marquee(
              text:
                  '🚀⚡️ Subscribe to 🧑🏻‍💻Code Flicks for 🔥 Awesome Flutter Tutorials! 🚀 Join the Journey! 💻✨✨',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Colors.black.withOpacity(0.7),
                    offset: const Offset(2.0, 2.0),
                  ),
                ],
              ),
              scrollAxis: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              blankSpace: 20.0,
              velocity: 50.0,
              pauseAfterRound: const Duration(seconds: 1),
              startPadding: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}
