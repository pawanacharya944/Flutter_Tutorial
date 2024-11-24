import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class MyConvexBottomBar extends StatefulWidget {
  const MyConvexBottomBar({super.key});

  @override
  State<MyConvexBottomBar> createState() => _MyConvexBottomBarState();
}

class _MyConvexBottomBarState extends State<MyConvexBottomBar> {
  int _currentIndex = 0;

  // screens with icons and text

  final List<Map<String, dynamic>> _screens = [
    {'icon': Icons.home, 'text': 'Welcome to the Code Flicks'},
    {'icon': Icons.search, 'text': 'Search here...'},
    {'icon': Icons.favorite, 'text': 'Favorites'},
    {'icon': Icons.notifications, 'text': 'Notifications'},
    {'icon': Icons.person, 'text': 'Your Profile'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'C o n v e x B o t t o m B a r',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.indigo.shade200,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                _screens[_currentIndex]['icon'],
                size: 80,
                color: Colors.indigo[600],
              ),
              const SizedBox(height: 20),
              Text(
                _screens[_currentIndex]['text'],
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.indigo[200],
        color: Colors.white,
        activeColor: Colors.indigo[800],
        style: TabStyle.react,
        curveSize: 80,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.search, title: 'Search'),
          TabItem(icon: Icons.favorite, title: 'Fav'),
          TabItem(icon: Icons.notifications, title: 'Notify'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        initialActiveIndex: 0,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
