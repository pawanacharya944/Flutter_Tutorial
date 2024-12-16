import 'package:flutter/material.dart';

class MyPositioned extends StatelessWidget {
  const MyPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'P o s i t i o n e d',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          // background image

          Positioned.fill(
            child: Image.asset(
              'images/sky.jpg',
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 150,
            left: 60,
            child: Text(
              'Welcome to Code Flicks',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 10,
                      color: Colors.black.withOpacity(0.5),
                      offset: const Offset(3, 3),
                    ),
                  ]),
            ),
          ),

          Positioned(
            bottom: 150,
            left: 50,
            right: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.orangeAccent),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                padding: WidgetStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.indigoAccent,
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
