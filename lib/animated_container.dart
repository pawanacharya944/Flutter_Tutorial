import 'dart:math';
import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  // properties for the animated container
  Color _color = Colors.blue[200]!;
  double _width = 200.0;
  double _height = 200.0;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(16);

  // Function to generate random size within screen limits
  double _randomSize(double maxWidth) {
    return Random().nextDouble() * (maxWidth - 50) +
        50; // size between 50 and maxWidth
  }

  // Function to change properties based on icon tapped
  void _changeProperties(String shapeType) {
    final maxWidth = MediaQuery.of(context).size.width;
    setState(() {
      switch (shapeType) {
        case 'circle':
          if (Random().nextBool()) {
            _width = _randomSize(maxWidth);
            _height = _width;
            _borderRadius = BorderRadius.circular(_width / 2);
          } else {
            _width = _randomSize(maxWidth);
            _height = _randomSize(maxWidth / 2);
            _borderRadius = BorderRadius.circular(_height / 2);
          }
          _color =
              Colors.primaries[Random().nextInt(Colors.primaries.length)][200]!;
          break;
        case 'square':
          if (Random().nextBool()) {
            _width = _randomSize(maxWidth);
            _height = _width;
            _borderRadius = BorderRadius.circular(0);
          } else {
            _width = _randomSize(maxWidth);
            _height = _width * 1.5;
            _borderRadius = BorderRadius.circular(10);
          }
          _color =
              Colors.primaries[Random().nextInt(Colors.primaries.length)][300]!;
          break;
        case 'rectangle':
          if (Random().nextBool()) {
            _width = _randomSize(maxWidth);
            _height = _randomSize(maxWidth / 2);
            _borderRadius = BorderRadius.circular(20);
          } else {
            _width = _randomSize(maxWidth);
            _height = 100;
            _borderRadius = BorderRadius.circular(50);
          }
          _color =
              Colors.primaries[Random().nextInt(Colors.primaries.length)][400]!;
          break;
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green[100]!, // First color of the gradient
              Colors.green[200]!, // Second color of the gradient
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
            width: min(_width, MediaQuery.of(context).size.width),
            height: min(_height, MediaQuery.of(context).size.height),
            decoration: BoxDecoration(
              color: _color, // Solid blue color for the container
              borderRadius: _borderRadius,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            // child: Center(
            //   child: Text(
            //     'Tap an Icon!',
            //     style: TextStyle(
            //         fontSize: 24,
            //         fontWeight: FontWeight.bold,
            //         color: Colors.black),
            //   ),
            // ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => _changeProperties('circle'),
              icon: Icon(
                Icons.circle_outlined,
                size: 40,
                color: Colors.blue[300],
              ),
            ),
            IconButton(
              onPressed: () => _changeProperties('square'),
              icon: Icon(
                Icons.square_outlined,
                size: 40,
                color: Colors.green[300],
              ),
            ),
            IconButton(
              onPressed: () => _changeProperties('rectangle'),
              icon: Icon(
                Icons.rectangle_outlined,
                size: 40,
                color: Colors.orange[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
