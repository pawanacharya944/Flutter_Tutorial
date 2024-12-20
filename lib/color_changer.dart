import 'dart:math';

import 'package:flutter/material.dart';

class MyColorChanger extends StatefulWidget {
  const MyColorChanger({super.key});

  @override
  State<MyColorChanger> createState() => _MyColorChangerState();
}

class _MyColorChangerState extends State<MyColorChanger> {
  Color backgroundColor = Colors.white;

  void changeColor() {
    setState(() {
      backgroundColor = Color(Random().nextInt(0xffffffff));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'C o l o r C h a n g e r',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: GestureDetector(
          onTap: changeColor,
          child: Container(
            color: backgroundColor,
            child: const Center(
              child: Text(
                'Tap Anywhere!',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
