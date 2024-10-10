import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyShimmer extends StatefulWidget {
  const MyShimmer({super.key});

  @override
  State<MyShimmer> createState() => _MyShimmerState();
}

class _MyShimmerState extends State<MyShimmer> {
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    // simulate a network call with a delay

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false; // stop loading after 3 seconds
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shimmer',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.teal[200],
      ),
      body: Center(
        child: _isLoading ? _buildShimmerEffect() : _buildActualImage(),
      ),
    );
  }

  // Method to build the Shimmer Effect

  Widget _buildShimmerEffect() {
    return Shimmer.fromColors(
        baseColor: Colors.teal[100]!,
        highlightColor: Colors.white,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(8),
          ),
        ));
  }

  // Method to display the actual image after loading...

  Widget _buildActualImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        'images/developer.jpg',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
