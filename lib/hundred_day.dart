import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class MyHundredDay extends StatefulWidget {
  const MyHundredDay({super.key});

  @override
  State<MyHundredDay> createState() => _MyHundredDayState();
}

class _MyHundredDayState extends State<MyHundredDay> {
  final ConfettiController _confettiController =
      ConfettiController(duration: const Duration(seconds: 5));
  bool showDetails = false;

  void _onCelebrate() {
    _confettiController.play();
    setState(() {
      showDetails = true;
    });
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('images/road.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken),
              ),
            ),
          ),
          Center(
            child: Card(
              color: Colors.white.withAlpha(100),
              elevation: 100,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      '100 Days of Flutter',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.2),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Challenge Completed!',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.tealAccent.shade400),
                    ),
                    const SizedBox(height: 40),
                    if (showDetails)
                      AnimatedOpacity(
                        opacity: showDetails ? 1.0 : 1.0,
                        duration: const Duration(seconds: 1),
                        child: const Column(
                          children: [
                            Text(
                              'In this journey, I created: ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amberAccent),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "- Widget Tutorials\n"
                              "- Small App\n"
                              "- UI Design\n\n"
                              "All shared on Code Flicks!",
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: _onCelebrate,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal.shade400,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 10,
                      ),
                      child: const Text(
                        'Celebrate Now!',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              emissionFrequency: 0.04,
              numberOfParticles: 60,
              gravity: 0.4,
              colors: const [
                Colors.purple,
                Colors.pink,
                Colors.blueAccent,
                Colors.teal,
                Colors.green,
                Colors.yellow,
                Colors.orange,
              ],
            ),
          )
        ],
      ),
    );
  }
}
