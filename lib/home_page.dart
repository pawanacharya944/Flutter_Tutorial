import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AppBar',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 26),
        ),
        backgroundColor: Colors.orangeAccent[200],
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 350,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Colors.purpleAccent, Colors.orangeAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(18),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 1),
                )
              ]),
          child: const Center(
            child: Text(
              "Hello, Code Flicks!",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
