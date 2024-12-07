import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  const MyFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'F l e x',
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          textDirection: TextDirection.ltr,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue.shade300, Colors.green.shade300]),
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  'Code',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.red.shade300, Colors.orange.shade300]),
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  'Flicks',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.comment,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('You Subscribed Code Flicks'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade300,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Subscribe',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
