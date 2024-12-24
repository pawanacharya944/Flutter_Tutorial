import 'package:flutter/material.dart';

class MyToggleText extends StatefulWidget {
  const MyToggleText({super.key});

  @override
  State<MyToggleText> createState() => _MyToggleTextState();
}

class _MyToggleTextState extends State<MyToggleText> {
  bool showFirstText = true;

  void toggleText() {
    setState(() {
      showFirstText = !showFirstText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'T o g g l e  T e x t',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue.shade200, Colors.teal.shade200],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
        ),
        child: Center(
          child: GestureDetector(
            onTap: toggleText,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (child, animation) =>
                  ScaleTransition(scale: animation, child: child),
              child: Text(
                showFirstText
                    ? 'Welcome to Code Flicks 🧑🏻‍💻'
                    : 'Explore Flutter Tutorials 🚀',
                key: ValueKey<bool>(showFirstText),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
