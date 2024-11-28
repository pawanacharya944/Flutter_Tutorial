import 'package:flutter/material.dart';

class MySliverGrid extends StatelessWidget {
  final List<Map<String, dynamic>> items = List.generate(
      24,
      (index) => {
            'title': 'Grid ${index + 1}',
            'color': (index % 6 == 0)
                ? Colors.blue.shade200
                : (index % 6 == 1)
                    ? Colors.orange.shade200
                    : (index % 6 == 2)
                        ? Colors.green.shade200
                        : (index % 6 == 3)
                            ? Colors.purple.shade200
                            : (index % 6 == 4)
                                ? Colors.indigo.shade200
                                : Colors.red.shade200
          });

  MySliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'S l i v e r G r i d',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              background: Image.asset(
                'images/m.jpg',
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.indigo.shade200,
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 3 / 4,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final item = items[index];
                return Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: item['color'],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        item['title']!,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                );
              },
              childCount: items.length,
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: Text(
                  'End of Grid',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
