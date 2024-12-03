import 'package:flutter/material.dart';

class MyExpansionTile extends StatelessWidget {
  const MyExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'E x p a n s i o n T i l e',
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          _buildExpansionTile(
            question: "What is Flutter?",
            answer:
                "Flutter is an open-source UI toolkit created by Google for building natively compiled apps for mobile, web, and desktop from a single codebase.",
            icon: Icons.flutter_dash,
            backgroundColor: Colors.blue[50],
          ),

          const SizedBox(height: 10),

          // another expansionTile
          _buildExpansionTile(
            question: "What is Dart?",
            answer:
                "Dart is a programming language optimized for building mobile, desktop, server and web applications.",
            icon: Icons.code,
            backgroundColor: Colors.green[50],
          ),
          const SizedBox(height: 8),

          // another ExpansionTile

          _buildExpansionTile(
            question: "Why use Flutter?",
            answer:
                "Flutter allows for fast development, expressive and flexible UI, and high performance across platforms.",
            icon: Icons.speed,
            backgroundColor: Colors.orange[50],
          ),
        ],
      ),
    );
  }

  // function to build an FAQ ExpansionTile

  Widget _buildExpansionTile({
    required String question,
    required String answer,
    required IconData icon,
    Color? backgroundColor,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(
          question,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        childrenPadding: const EdgeInsets.all(16),
        backgroundColor: backgroundColor,
        collapsedBackgroundColor: Colors.white,
        textColor: Colors.blue,
        collapsedTextColor: Colors.black,
        iconColor: Colors.blue,
        collapsedIconColor: Colors.grey,
        children: [
          Text(
            answer,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          )
        ],
      ),
    );
  }
}
