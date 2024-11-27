import 'package:flutter/material.dart';

class MyShaderMask extends StatelessWidget {
  const MyShaderMask({super.key});

  // define the gradient

  final Gradient gradient = const LinearGradient(
      colors: [Colors.purple, Colors.blue, Colors.teal, Colors.yellow],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'S h a d e r  M a s k',
          style: TextStyle(fontSize: 26, color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return gradient.createShader(bounds);
              },

              blendMode: BlendMode
                  .srcIn, // this ensures only the text gets the gradient

              child: const Text(
                'Believe in Yourself',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Gradient icon using shaderMask

            ShaderMask(
              shaderCallback: (Rect bounds) {
                return gradient.createShader(bounds);
              },
              blendMode: BlendMode.srcIn,
              child: const Icon(Icons.lightbulb_outline, size: 100),
            ),

            const SizedBox(height: 40),

            ShaderMask(
              shaderCallback: (Rect bounds) {
                return gradient.createShader(bounds);
              },
              blendMode: BlendMode.srcIn,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.transparent, // important for shaderMask
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.white10,
                        content: Text("You're Doing Great!"),
                      ),
                    );
                  },
                  child: const Text(
                    'Get Inspired',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
