import 'package:flutter/material.dart';

class My_Buttons extends StatelessWidget {
  const My_Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // full width of screen
        height: double.infinity, // full height of screen

        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue[200]!,
            Colors.green[300]!,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),

        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // center items vertically
          crossAxisAlignment:
              CrossAxisAlignment.center, // center items horizontally

          children: [
            ElevatedButton(
              onPressed: () {
                // action when button is pressed

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Elevated Button Pressed!",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[400],
                foregroundColor: Colors.black,
                elevation: 4,

                padding: const EdgeInsets.symmetric(
                    horizontal: 30, vertical: 15), // padding inside the button
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text(
                "Code Flicks",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ), // space between buttons

            TextButton(
              onPressed: () {
                // action when button is pressed
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Text Button Pressed!",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                );
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.black, // text color
                elevation: 5,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15), // padding inside the button
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text(
                "Press Me",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(
              height: 50,
            ),

            IconButton(
              icon: const Icon(
                Icons.fingerprint,
                color: Colors.black,
                size: 70,
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Icon Button Pressed!",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                );
              },

              tooltip: 'Fingerprint', // tooltip when long pressed
            ),

            const SizedBox(
              height: 50,
            ),

            FloatingActionButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "Floating Action Button Pressed!",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                );
              },
              backgroundColor: Colors.blue[
                  300], // this is the background color of floating action button

              child: const Icon(
                Icons.person,
                size: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
