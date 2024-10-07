import 'package:flutter/material.dart';

class My_AnimatedIcon extends StatefulWidget {
  const My_AnimatedIcon({super.key});

  @override
  State<My_AnimatedIcon> createState() => _My_AnimatedIconState();
}

class _My_AnimatedIconState extends State<My_AnimatedIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; // controls the animation
  bool _isOpen = false; // Tracks if the menu is open or closed
  @override
  void initState() {
    super.initState();
// initialize the animationcontroller with a duration of 300 milliseconds
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this, // provides a vsync for smooth animation
    );
  }

  // toggles the icon's state and triggers the animation

  void _toggleIcon() {
    setState(() {
      _isOpen = !_isOpen; // switches between open and closed state
      if (_isOpen) {
        _controller.forward(); //animates forward when opened
      } else {
        _controller.reverse(); // animates backward when closed
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose(); //disposes of the controller to free the resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.green[300]!, //this is the start color of the gradient
                Colors.blue[300]!, // middle color of the gradient
                Colors.purple[300]!, // end color of the gradient
              ],
              begin: Alignment.topLeft, // gradient start from top left
              end: Alignment.bottomRight), //gradient ends at bottom right
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Tap the Icon",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: _toggleIcon, // it calls _toggleIcon when icon is tapped

              child: AnimatedIcon(
                icon: AnimatedIcons.menu_close,
                progress:
                    _controller, // animation progress controlled by controller
                size: 100.0, // it is the size of the animated icon
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(_isOpen ? 'Menu Opened' : 'Menu Closed',
                style: const TextStyle(fontSize: 20, color: Colors.white70))
          ],
        )),
      ),
    );
  }
}
