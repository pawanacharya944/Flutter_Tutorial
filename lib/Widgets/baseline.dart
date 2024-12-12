import 'package:flutter/material.dart';

class MyBaseline extends StatelessWidget {
  const MyBaseline({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'B a s e l i n e',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.indigo.shade200,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const BottomAppBar(),
              const Baseline(
                baseline: 10,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  'Code',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Baseline(
                baseline: 60,
                baselineType: TextBaseline.alphabetic,
                child: Text(
                  'Flicks',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Baseline(
                baseline: 10,
                baselineType: TextBaseline.alphabetic,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text(
                    'Subscribe',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
