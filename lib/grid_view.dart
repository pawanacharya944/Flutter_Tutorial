import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    // list of image asset paths
    final List<String> imagePaths = [
      'images/boy.jpeg',
      'images/dev.jpeg',
      'images/developer.jpg',
      'images/programmer.jpg'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GridView',
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of columns in the grid
          crossAxisSpacing: 10, // space between columns
          mainAxisSpacing: 10, // space between rows
          childAspectRatio: 1.0,
        ),
        padding: const EdgeInsets.all(10),
        itemCount: 40,
        itemBuilder: (context, index) {
          //repeat images using module operator
          String imagePath = imagePaths[index % imagePaths.length];

          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Image ${index + 1}'),
                  content: Image.asset(imagePath),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Close'),
                    ),
                  ],
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
