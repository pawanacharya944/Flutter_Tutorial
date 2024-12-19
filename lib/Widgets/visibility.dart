import 'package:flutter/material.dart';

class MyVisibility extends StatefulWidget {
  const MyVisibility({super.key});

  @override
  State<MyVisibility> createState() => _MyVisibilityState();
}

class _MyVisibilityState extends State<MyVisibility> {
  bool isVisible = true; // toggle state for visibility
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'V i s i b i l i t y',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.green.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: isVisible,
              replacement: const Center(
                child: Text(
                  'Widget is Hidden',
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(16),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green.shade200,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'This widget is visible.\nTo hide it, Click the Button below!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown.shade900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // button to toggle visibility

            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible; // toggle the visibility state
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade400,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                isVisible ? 'Hide Widget' : 'Show Widget',
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
