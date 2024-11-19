import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyCircularPercentIndicator extends StatelessWidget {
  const MyCircularPercentIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Circular Percent Indicator',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue.shade200, Colors.teal.shade100],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircularPercentIndicator(
                  radius: 90,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: const Text(
                    '50%',
                    style: TextStyle(fontSize: 18),
                  ),
                  footer: const Text(
                    'Charging',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  progressColor: Colors.black54,
                ),
              ),
              const SizedBox(height: 20),
              CircularPercentIndicator(
                radius: 110,
                animation: true,
                animationDuration: 1200,
                lineWidth: 15.0,
                percent: 0.7,
                center: const Text(
                  '48 hours',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                footer: const Text(
                  'Working Hours',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: Colors.green,
                progressColor: Colors.red,
              ),
              const SizedBox(height: 40),
              CircularPercentIndicator(
                radius: 120,
                animation: true,
                lineWidth: 13.0,
                percent: 0.8,
                center: const Text(
                  '80.0%',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                footer: const Text(
                  'Sales this week',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.deepPurpleAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
