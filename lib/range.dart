import 'package:flutter/material.dart';

class MyRangeSlider extends StatefulWidget {
  const MyRangeSlider({super.key});

  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  // initial range values

  RangeValues _currentRangeValues = const RangeValues(20, 70);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'R a n g e  S l i d e r',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade200, Colors.blue.shade300],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select a Range: ',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Start',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  'End',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
            RangeSlider(
              values: _currentRangeValues,
              min: 0,
              max: 100,
              divisions: 10,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              activeColor: Colors.white,
              inactiveColor: Colors.blueGrey.shade400,
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.white10,
                    content: Text(
                      'The Selected Range is: ${_currentRangeValues.start.round()} to ${_currentRangeValues.end.round()}',
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    )));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.teal,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Confirm Selected',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
