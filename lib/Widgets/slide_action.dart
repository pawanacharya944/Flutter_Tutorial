import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class MySlideAction extends StatefulWidget {
  const MySlideAction({super.key});

  @override
  State<MySlideAction> createState() => _MySlideActionState();
}

class _MySlideActionState extends State<MySlideAction> {
  bool _isUnlocked = false; // state variable to track if unlocked
  void _toggleLock() {
    setState(() {
      _isUnlocked = !_isUnlocked; // toggle lock state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Slide Action',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.purple[200],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _isUnlocked ? Icons.lock_open : Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                _isUnlocked ? 'Unlocked!' : 'Swipe to Unlock',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40.0),
              SlideAction(
                height: 70,
                outerColor: Colors.purple[200],
                innerColor: Colors.white,
                textColor: Colors.black,
                text: _isUnlocked ? 'Slide to Lock' : 'Slide to Unlock',
                sliderButtonIconSize: 30,
                sliderButtonIconPadding: 16,
                sliderButtonYOffset: 0,
                enabled: true,
                borderRadius: 52,
                elevation: 6,
                animationDuration: const Duration(milliseconds: 300),
                onSubmit: () {
                  _toggleLock();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(_isUnlocked ? 'Locked!' : 'Unlocked'),
                    ),
                  );
                  return null;
                },
                sliderButtonIcon: const Icon(
                  Icons.chevron_right,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
