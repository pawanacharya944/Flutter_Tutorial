import 'package:flutter/material.dart';

class My_Images extends StatelessWidget {
  const My_Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Images'),
        backgroundColor: Colors.blueGrey[100],
      ),
      body: SingleChildScrollView(
        // Allows scrolling of the content
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10), // Margin around the container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), // Rounded corners
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4), // Shadow effect
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(15), // Clip for rounded corners
                child: Image.asset(
                  'images/dev.jpeg', // Path to your asset image
                  fit: BoxFit.cover, // Cover the entire container
                  width: double.infinity, // Full width of the container
                  height: 600, // Fixed height for the asset image
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.all(10), // Margin around the container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), // Rounded corners
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4), // Shadow effect
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(15), // Clip for rounded corners
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2024/03/18/10/51/ai-generated-8640900_1280.jpg', // URL of your network image
                  fit: BoxFit.cover, // Cover the entire container
                  width: double.infinity, // Full width of the container
                  height: 600, // Fixed height for the network image
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
