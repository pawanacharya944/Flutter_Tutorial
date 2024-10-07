import 'package:flutter/material.dart';

class My_Card extends StatelessWidget {
  const My_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Card",
          style: TextStyle(fontSize: 32),
        ),
        backgroundColor: Colors.blueGrey[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              margin: const EdgeInsets.all(18), // margin around the card
              elevation: 10, // elevation for the shadow effect
              color: Colors.blueGrey[100], // background color of the card
              // shape of the card with rounded corners
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(color: Colors.blue, width: 2),
              ),

              // clip behavior to clip child content

              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // image widget inside the card
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2024/05/15/20/57/developer-8764524_1280.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(
                      height: 12, // space between image and text
                    ),
                    const Text(
                      "Developer",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(
                      height: 8, // spcae between title and subtitle
                    ),
                    Text(
                      "Taking a quick power nap to fix all bugs.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(
                      height: 12, // space before button
                    ),
                    // action button
                    ElevatedButton(
                      onPressed: () {
                        // action when button is pressed
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Color.fromARGB(255, 172, 212, 244),
                            content: Text(
                              "Button Pressed!",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.blueGrey,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10)),
                      child: const Text("View More"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
