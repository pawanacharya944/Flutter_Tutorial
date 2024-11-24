import 'package:flutter/material.dart';

class MySliverList extends StatelessWidget {
  MySliverList({super.key});
  final List<String> items = List.generate(20, (index) => "Item #$index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true, // keeps the app bar visible after scrolling
            backgroundColor: Colors.indigo.shade200,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'S l i v e r  L i s t',
                style: TextStyle(color: Colors.white),
              ),
              background: Image.asset(
                'images/snow.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Sliver List of Items: ',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors
                        .primaries[index % Colors.primaries.length].shade200,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    title: Text(
                      items[index],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: const Text(
                      "List Created by Code Flicks",
                      style: TextStyle(color: Colors.black54),
                    ),
                    leading: const Icon(
                      Icons.list,
                      color: Colors.indigo,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.indigo,
                    ),
                    onTap: () {
                      print('Tapped on ${items[index]}');
                    },
                  ),
                );
              },

              childCount: items.length, // total number of items
            ),
          ),
        ],
      ),
    );
  }
}
