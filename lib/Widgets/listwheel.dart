import 'package:flutter/material.dart';

class MyListWheelScrollView extends StatelessWidget {
  const MyListWheelScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListWheelScrollView',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.blue[200]!, Colors.green[200]!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
          ),
          Center(
            child: ListWheelScrollView(
                itemExtent: 120, // height of each item
                diameterRatio: 2.0,
                offAxisFraction: -0.5, // adjust vertical position of the wheel
                useMagnifier: true,
                magnification: 1.2,
                children: List.generate(15, (index) {
                  // generate a list of items for the wheel
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.primaries[index %
                            Colors.primaries
                                .length], // color for each item based on index
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0, 6),
                            blurRadius: 12,
                          ),
                        ]),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _getItemName(index),
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            _getItemDescription(index),
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white70,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }

  String _getItemName(int index) {
    // provide a list
    const itemNames = [
      'Flutter SDK',
      'Dart',
      'Widget',
      'Package',
      'Provider',
      'Hive',
      'Riverpod',
      'FlutterFire',
    ];
    return itemNames[index %
        itemNames.length]; // return name based on index (looping through list)
  }

  String _getItemDescription(int index) {
    // provide descriptions

    const itemDescriptions = [
      'The framework for building natively compiled apps.',
      'The programming language used for Flutter apps.',
      'A basic building block of Flutter UI,',
      'A reusable piece of code that adds functionality.',
      'A state management solution for Flutter.',
      'A lightweight and fast key-value database.',
      'A modern state management library for Dart',
      'A set of Flutter plugins to integrate with Firebase.',
    ];
    return itemDescriptions[
        index % itemDescriptions.length]; // return description based on index
  }
}
