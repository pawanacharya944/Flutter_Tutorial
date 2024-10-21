import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class MyLiquidPull extends StatefulWidget {
  const MyLiquidPull({super.key});

  @override
  State<MyLiquidPull> createState() => _MyLiquidPullState();
}

class _MyLiquidPullState extends State<MyLiquidPull> {
  List<Map<String, String>> items = List.generate(
    10,
    (index) => {
      'title': 'Exciting Event $index',
      'description':
          'Join us for an exciting event filled with fun and activities!',
    },
  );

  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      items.insert(0, {
        'title': 'New Event ${items.length}',
        'description': 'Don\'t miss out on this amazing new event! ',
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidPullToRefresh(
        height: 180,
        onRefresh: _onRefresh,
        color: Colors.green[300],
        backgroundColor: Colors.blueGrey,
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.all(8.0),
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.green[100 + (index % 3) * 100],
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.event,
                        size: 40,
                        color: Colors.green[800],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        items[index]['title']!,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        items[index]['description']!,
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
