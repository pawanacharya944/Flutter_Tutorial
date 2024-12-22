import 'dart:math';

import 'package:flutter/material.dart';

class MyEmojiSwitcher extends StatefulWidget {
  const MyEmojiSwitcher({super.key});

  @override
  State<MyEmojiSwitcher> createState() => _MyEmojiSwitcherState();
}

class _MyEmojiSwitcherState extends State<MyEmojiSwitcher> {
  final List<String> emojis = [
    '😉',
    '😄',
    '🥹',
    '🤣',
    '🥶',
    '😱',
    '🫣',
    '😎',
    '🤪',
    '🔥',
    '🧑🏻‍💻',
    '😅',
    '😁',
    '🥳',
    '😡',
    '😋',
    '😏',
    '😢',
    '😬',
    '😴',
    '❤️',
    '❤️‍🔥'
  ];

  String currentEmoji = '🥳';

  void switchEmoji() {
    setState(() {
      currentEmoji = emojis[Random().nextInt(emojis.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'E m o j i  S w i t c h e r',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.teal.shade200, Colors.blue.shade200],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentEmoji,
                style: const TextStyle(fontSize: 150),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: switchEmoji,
                child: const Text(
                  'Switch Emoji',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
