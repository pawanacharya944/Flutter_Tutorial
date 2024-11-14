import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // this is the main hero of the today tutorial 😉😄
      extendBodyBehindAppBar: true, // this allows body to extend behind appBar
      appBar: AppBar(
        leading: const BackButton(),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
        title: const Text(
          'T r a n s p a r e n t   A p p B a r',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent, // this also😉
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/sky.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250,
                ),
                Text(
                  'Hey Code Flicks...👋',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
