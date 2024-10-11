import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatelessWidget {
  const MyCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Carousel',
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: Center(
        child: CarouselSlider(
            options: CarouselOptions(
              height: 400.0,
              autoPlay: false,
              autoPlayInterval: const Duration(seconds: 3),
              enlargeCenterPage: true,
              viewportFraction: 0.85,
              enableInfiniteScroll: true,
            ),
            items: [
              'images/messi.jpg',
              'images/ronaldo.jpg',
              'images/neymar.jpg',
              'images/developer.jpg',
            ].map((imagePath) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                ),
              );
            }).toList()),
      ),
    );
  }
}
