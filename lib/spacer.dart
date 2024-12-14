import 'package:flutter/material.dart';

class MySpacer extends StatelessWidget {
  const MySpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'S p a c e r',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.teal.shade200,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.teal.shade200,
                child: const Icon(
                  Icons.star,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),

            // spacer to add flexible space

            const Spacer(flex: 1),

            Text(
              'Subscribe to Code Flicks',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade600),
            ),

            // spacer to add more flexible space

            const Spacer(flex: 2),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal.shade300,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Subscribed',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),

            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
