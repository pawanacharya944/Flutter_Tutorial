import 'package:flutter/material.dart';

class MyClipRRect extends StatelessWidget {
  const MyClipRRect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'C l i p R R e c t',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.indigo.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // image without clipRRect to show difference

              const Text(
                'Image Without ClipRRect',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              Image.asset(
                'images/sky.jpg',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 30),

              // image with clipRRect

              const Text(
                'Image With ClipRRect',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'images/m.jpg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 30),

              // image with more rounded corner

              const Text(
                'More Rounded Corners',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  'images/d.jpg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
