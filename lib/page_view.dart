import 'package:flutter/material.dart';

class MyPageView extends StatelessWidget {
  final List<String> imagePaths = [
    'images/water.jpg',
    'images/fruit.jpg',
    'images/mojito.jpg',
    'images/wine.jpg',
    'images/mint.jpg',
    'images/wines.jpg',
    'images/coffeebeans.jpg',
    'images/chai.jpg',
    'images/lemon.jpg',
  ];
  MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'PageView',
      //     style: TextStyle(fontSize: 26),
      //   ),
      //   backgroundColor: Colors.green[100],
      // ),
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: imagePaths.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                print('Tapped on image $index');
              },
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}
