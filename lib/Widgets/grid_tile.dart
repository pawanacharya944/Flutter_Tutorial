import 'package:flutter/material.dart';

class MyGridTile extends StatelessWidget {
  const MyGridTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'G r i d T i l e',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.indigo.shade200,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(
          60,
          (index) {
            return GridTile(
              header: Container(
                color: Colors.brown.shade300,
                child: Center(
                  child: Text(
                    'Header ${index + 1}',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              footer: Container(
                color: Colors.green.shade300,
                child: Center(
                  child: Text(
                    'Footer ${index + 1}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
              child: Center(
                child: Image.asset('images/boy.jpeg'),
              ),
            );
          },
        ),
      ),
    );
  }
}
