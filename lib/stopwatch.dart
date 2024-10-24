import 'dart:async';

import 'package:flutter/material.dart';

class MyStopwatch extends StatefulWidget {
  const MyStopwatch({super.key});

  @override
  State<MyStopwatch> createState() => _MyStopwatchState();
}

class _MyStopwatchState extends State<MyStopwatch> {
  int _elapsedSeconds = 0; // variable to store elapsed seconds
  bool _isRunning = false; // flag to check if time is running
  Timer? _timer; // timer instance

  // function to start the timer

  void _startTimer() {
    if (_isRunning) return; // prevent starting if already running

    _isRunning = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _elapsedSeconds++; // increment elapsed seconds
      });
    });
  }

  // function to stop the timer

  void _stopTimer() {
    if (!_isRunning) return; // prevent stopping if not running

    _isRunning = false;
    _timer?.cancel(); // cancel the timer
  }

  // function to reset the timer
  void _resetTimer() {
    _stopTimer(); // stop the timer before resetting
    setState(() {
      _elapsedSeconds = 0; // reset elapsed seconds to zero
    });
  }

  // getter to format elapsed time in MM:ss format

  String get formattedTime {
    final minutes = (_elapsedSeconds ~/ 60).toString().padLeft(2, '0');
    final seconds = (_elapsedSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  void dispose() {
    _timer?.cancel(); // cancel the timer when disposing
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stopwatch',
          style: TextStyle(fontSize: 38),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // display formatted time

              Text(
                formattedTime,
                style: const TextStyle(
                  fontSize: 74,
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black54,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // row for the control buttons

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildControlButton('Start', Colors.green, _startTimer),
                  const SizedBox(width: 20),
                  _buildControlButton('Stop', Colors.red, _stopTimer),
                  const SizedBox(width: 20),
                  _buildControlButton('Reset', Colors.orange, _resetTimer),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // helper function to build a control button with styling

  Widget _buildControlButton(
      String label, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          foregroundColor: color, // Button color based on parameter
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 5),
      child: Text(
        label,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }
}
