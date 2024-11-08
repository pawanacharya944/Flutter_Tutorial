import 'package:flutter/material.dart';

class MyAnimatedCrossFade extends StatefulWidget {
  const MyAnimatedCrossFade({super.key});

  @override
  State<MyAnimatedCrossFade> createState() => _MyAnimatedCrossFadeState();
}

class _MyAnimatedCrossFadeState extends State<MyAnimatedCrossFade> {
  // boolean variable to toggle between the two children

  bool _showFirstChild = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AnimatedCrossFade',
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: AnimatedCrossFade(
            firstChild: _buildFirstChild(),
            secondChild: _buildSecondChild(),
            crossFadeState: _showFirstChild
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
            reverseDuration: const Duration(seconds: 1),
            firstCurve: Curves.easeIn,
            secondCurve: Curves.easeInOut,
            layoutBuilder: (Widget topChild, Key topChildKey,
                Widget bottomChild, Key bottomChildKey) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(key: bottomChildKey, child: bottomChild),
                  Positioned(key: topChildKey, child: topChild),
                ],
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showFirstChild =
                !_showFirstChild; // this toggle the boolean variable
          });
        },
        tooltip: 'Toogle',
        backgroundColor: Colors.green[300],
        child: const Icon(Icons.swap_horiz),
      ),
    );
  }

  Widget _buildFirstChild() {
    return Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 15.0,
              offset: Offset(0, 5),
            )
          ],
          image: const DecorationImage(
              image: AssetImage('images/boy.jpeg'), fit: BoxFit.cover)),
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        child: const Text(
          'Exhausted Developer',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildSecondChild() {
    return Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 15.0,
              offset: Offset(0, 5),
            )
          ],
          image: const DecorationImage(
              image: AssetImage('images/developer.jpg'), fit: BoxFit.cover)),
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        child: const Text(
          'Intent Developer',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
