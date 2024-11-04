import 'package:flutter/material.dart';

class MyScrollbar extends StatefulWidget {
  const MyScrollbar({super.key});

  @override
  State<MyScrollbar> createState() => _MyScrollbarState();
}

class _MyScrollbarState extends State<MyScrollbar> {
  // boolean to control scrollbar visibility
  bool _isAlwaysShown = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ScrollBar',
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Scrollbar(
                  thickness: 12,
                  thumbVisibility: _isAlwaysShown,
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (ScrollNotification notification) {
                      setState(() {
                        // update scrollbar visibility based on scroll position
                        _isAlwaysShown = notification.metrics.pixels > 0;
                      });
                      return true;
                    },
                    child: ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: 50,
                      itemBuilder: (context, index) => MyItem(index),
                    ),
                  )))
        ],
      ),
    );
  }
}

class MyItem extends StatelessWidget {
  final int index;
  const MyItem(this.index, {super.key}); // constructor to receive index

  @override
  Widget build(BuildContext context) {
    final color = Colors.primaries[index % Colors.primaries.length];

    // define a list of names
    final List<String> names = [
      'Ocean Breeze',
      'Sunset Glow',
      'Forest Green',
      'Mountain Mist',
      'Desert Sand',
      'Lavender Fields',
      'Cherry Blossom',
      'Autumn Leaves',
      'Midnight Skye',
      'Golden Sunrise',
    ];

    String name = names[index % names.length];

    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: color,
          child: Text(
            '${index + 1}',
            style: const TextStyle(color: Colors.white),
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'A soothing shade reminiscent of $name.',
          style: TextStyle(color: Colors.grey[600]),
        ),
      ),
    );
  }
}
