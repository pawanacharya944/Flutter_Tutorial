import 'package:flutter/material.dart';

class MyColorFiltered extends StatelessWidget {
  const MyColorFiltered({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'C o l o r  F i l t e r e d',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red.shade100,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red.shade100, Colors.blue.shade100],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                  child: Column(
                children: [
                  const Text(
                    'Original Image',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Image.asset('images/m.jpg')
                ],
              )),
              const Divider(
                height: 32,
                thickness: 2,
                color: Colors.black,
              ),

              // now Filtered Image

              Expanded(
                  child: Column(
                children: [
                  const Text(
                    'Filtered Image',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.purple.withOpacity(0.8),
                      BlendMode.softLight,
                    ),
                    child: Image.asset('images/m.jpg'),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
