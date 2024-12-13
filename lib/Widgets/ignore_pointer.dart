import 'package:flutter/material.dart';

class MyIgnorePointer extends StatefulWidget {
  const MyIgnorePointer({super.key});

  @override
  State<MyIgnorePointer> createState() => _MyIgnorePointerState();
}

class _MyIgnorePointerState extends State<MyIgnorePointer> {
  bool _ignoreInteractions = false; // variable to toggle IgnorePointer

  double _sliderValue = 0.5; // variable to track slider value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'I g n o r e P o i n t e r',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.blue.shade200,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue.shade200, Colors.teal.shade200],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SwitchListTile(
              title: const Text(
                'Ignore User Interactions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              value: _ignoreInteractions,
              onChanged: (bool value) {
                setState(
                  () {
                    _ignoreInteractions = value;
                  },
                );
              },
            ),
            const SizedBox(height: 40),

            // area affected by IgnorePointer

            IgnorePointer(
              ignoring: _ignoreInteractions, // controls interaction
              child: ExcludeSemantics(
                excluding:
                    _ignoreInteractions, // screen readers are also disabled when true
                child: Column(
                  children: [
                    // button
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Button 1 Pressed'),
                          ),
                        );
                      },
                      child: const Text(
                        'Button 1',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),

                    const SizedBox(height: 20),

                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Button 2 Pressed'),
                          ),
                        );
                      },
                      child: const Text(
                        'Button 2',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),

                    const SizedBox(height: 30),

                    Slider(
                      value: _sliderValue,
                      activeColor: Colors.green.shade600,
                      inactiveColor: Colors.brown.shade300,
                      onChanged: (double value) {
                        setState(
                          () {
                            _sliderValue = value;
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 60),

            Text(
              _ignoreInteractions
                  ? 'Interaction are Disabled'
                  : 'Interactions are Enabled',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
