import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimatedGrid extends StatefulWidget {
  const MyAnimatedGrid({super.key});

  @override
  State<MyAnimatedGrid> createState() => _MyAnimatedGridState();
}

class _MyAnimatedGridState extends State<MyAnimatedGrid> {
  final List<String> _data = [
    'Dart',
    'Python',
    'Java',
    'C++',
    'JavaScript',
    'C',
  ];

  // this list is for random addition

  final List<String> programmingLanguages = [
    'Swift',
    'Kotlin',
    'Ruby',
    'Rust',
    'PHP',
    'Go',
    'Scala',
    'Haskell',
    'Perl',
    'C#',
    'Lua',
    'TypeScript',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AnimatedGrid',
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: _data.length,
              itemBuilder: (context, index) {
                return _buildItem(_data[index]);
              },
            ),
          ),

          // button row for adding and removing items
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _addItem,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[400],
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Add Language',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                ElevatedButton(
                  onPressed: _removeItem,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[400],
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Remove Language',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // build each item in the AnimatedGrid with a fade and scale transition

  Widget _buildItem(String item) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            item,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  // adds a new random programming language to the list and animates its addition

  void _addItem() {
    if (programmingLanguages.isNotEmpty) {
      final randomIndex = Random()
          .nextInt(programmingLanguages.length); // generate a random index
      String newLanguage = programmingLanguages[randomIndex];
      setState(() {
        _data.add(newLanguage);
      });

      // remove the added language from the options to prevent duplicates until rest
      programmingLanguages.removeAt(randomIndex);
    }
  }

  // removes the last programming language from the list and animates its removal

  void _removeItem() {
    if (_data.isNotEmpty) {
      setState(() {
        final removedItem = _data.removeLast(); // remove the last item

        // optionally add back removed language to allow re-adding later
        programmingLanguages.add(removedItem);
      });
    }
  }
}
