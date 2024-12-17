import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  const MySingleChildScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'S i n g l e C h i l d S c r o l l V i e w',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.teal.shade200,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        reverse: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Explore Flutter UI',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
            const SizedBox(height: 16),
            for (int i = 1; i <= 12; i++)
              Card(
                margin: const EdgeInsets.only(bottom: 16),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal.shade400,
                    child: const Icon(Icons.book, color: Colors.white),
                  ),
                  title: Text('Flutter Topic $i'),
                  subtitle: Text('Detailed explanation of topic $i.'),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.teal.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text(
                    'End of Topics',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal.shade700),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Thank you for scrolling through this tutorial!😄',
                    style: TextStyle(color: Colors.teal.shade600, fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
