import 'package:flutter/material.dart';

class MyAbsorbPointer extends StatefulWidget {
  const MyAbsorbPointer({super.key});

  @override
  State<MyAbsorbPointer> createState() => _MyAbsorbPointerState();
}

class _MyAbsorbPointerState extends State<MyAbsorbPointer> {
  bool _isAbsorbing = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'A b s o r b P o i n t e r',
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
          children: [
            AbsorbPointer(
              absorbing: _isAbsorbing,
              child: Opacity(
                opacity: _isAbsorbing ? 0.5 : 1.0,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Button Pressed!'),
                      ),
                    );
                  },
                  child: const Text(
                    'Tap Me',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SwitchListTile(
                activeColor: Colors.green.shade700,
                title: const Text(
                  'Enable Button Interaction',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                value: !_isAbsorbing,
                onChanged: (bool value) {
                  setState(() {
                    _isAbsorbing = !value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
