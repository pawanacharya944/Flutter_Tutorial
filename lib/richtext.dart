import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'R i c h T e x t',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade100, Colors.blue.shade100],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: RichText(
              text: const TextSpan(
                text: 'When I wrote this Code, ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                    text: 'only God and I understood ',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        height: 1.5,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.wavy),
                  ),
                  TextSpan(
                    text: 'What I did. \n',
                    style: TextStyle(
                      color: Colors.teal,
                      height: 1.5,
                      fontSize: 28,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1.5,
                    ),
                  ),
                  TextSpan(
                    text: 'Now only God knows. \n\n',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.brown,
                      height: 1.5,
                      fontSize: 26,
                      letterSpacing: 2.0,
                      shadows: [
                        Shadow(
                          blurRadius: 4.0,
                          color: Colors.black45,
                          offset: Offset(1, 22),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
