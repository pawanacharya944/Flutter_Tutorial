import 'package:flutter/material.dart';

class MyLetterCounter extends StatefulWidget {
  const MyLetterCounter({super.key});

  @override
  State<MyLetterCounter> createState() => _MyLetterCounterState();
}

class _MyLetterCounterState extends State<MyLetterCounter> {
  // controller to handle text input

  final TextEditingController _controller = TextEditingController();

  // function to count character in the input text

  int _countLetters(String input) {
    return input.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'L e t t e r   C o u n t e r',
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: TextField(
                controller: _controller,
                maxLines: 5,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type Something...',
                  hintStyle: TextStyle(color: Colors.blueGrey),
                ),
                style: const TextStyle(fontSize: 18, color: Colors.black),
                onChanged: (text) {
                  setState(() {});
                },
              ),
            ),
            const SizedBox(height: 20),

            // display the number of characters

            const Text(
              'Character Count: ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Text(
                "${_countLetters(_controller.text)}", // this shows the character count
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: Colors.green.shade700,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // reset button with animation

            ElevatedButton(
              onPressed: () {
                _controller.clear(); // clear the text input
                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade500,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Clear Text',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
