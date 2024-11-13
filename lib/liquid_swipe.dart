import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class MyLiquidSwipe extends StatefulWidget {
  const MyLiquidSwipe({super.key});

  @override
  State<MyLiquidSwipe> createState() => _MyLiquidSwipeState();
}

class _MyLiquidSwipeState extends State<MyLiquidSwipe> {
  // create a controller for the liquid swipe

  final LiquidController liquidController = LiquidController();

  // define the pages to swipe through
  final List<Widget> pages = [
    // first page

    Container(
      decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('images/ironman.jpg'),
            fit: BoxFit.cover,
          )),
    ),

    // second page
    Container(
      decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('images/dr.jpg'),
            fit: BoxFit.cover,
          )),
    ),

    Container(
      decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('images/spiderman.jpg'),
            fit: BoxFit.cover,
          )),
    ),

    Container(
      decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('images/thor.jpg'),
            fit: BoxFit.cover,
          )),
    ),

    Container(
      decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('images/spider.jpg'),
            fit: BoxFit.cover,
          )),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        liquidController: liquidController,
        enableLoop: true,
        fullTransitionValue: 500, // sensitivity of the swipe
        waveType: WaveType.liquidReveal,
        slideIconWidget: const Icon(Icons.arrow_back_ios, color: Colors.white),
        onPageChangeCallback: (page) {
          print('Current page index is $page');
        },
      ),
    );
  }
}
