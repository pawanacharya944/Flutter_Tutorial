import 'package:flutter/material.dart';

class MyRotatedBox extends StatelessWidget {
  const MyRotatedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'R o t a t e d B o x',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.brown.shade300,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotatedBox(
              quarterTurns: 1,
              child: MyCard(
                  text: '90° Rotation',
                  colors: [Colors.blue, Colors.purpleAccent]),
            ),

            SizedBox(height: 20),

            // another rotatedCard
            RotatedBox(
              quarterTurns: 2,
              child: MyCard(
                  text: '180° Rotation',
                  colors: [Colors.teal, Colors.greenAccent]),
            ),

            SizedBox(height: 20),

            // another rotatedCard

            RotatedBox(
              quarterTurns: 3,
              child: MyCard(
                  text: '270° Rotation',
                  colors: [Colors.orange, Colors.redAccent]),
            )
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String text;
  final List<Color> colors;
  final Color shadowColor;

  const MyCard({
    super.key,
    required this.text,
    required this.colors,
    this.shadowColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.5),
            blurRadius: 16,
            offset: const Offset(5, 5),
          ),
        ],
      ),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
