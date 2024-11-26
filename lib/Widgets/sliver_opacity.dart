import 'package:flutter/material.dart';

class MySliverOpacity extends StatelessWidget {
  const MySliverOpacity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'S l i v e r O p a c i t y',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              background: Image.asset(
                'images/mt.jpg',
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.teal.shade200,
          ),
          SliverOpacity(
            opacity: 0.9,
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color:
                          Colors.blueAccent.withOpacity(0.1 * (index % 10 + 1)),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.blueAccent, width: 1),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Item ${index + 1}',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const Icon(Icons.arrow_forward_ios,
                            color: Colors.blueAccent),
                      ],
                    ),
                  );
                },
                childCount: 20,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 50.0),
          ),
        ],
      ),
    );
  }
}
