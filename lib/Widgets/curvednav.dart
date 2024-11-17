import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyCurvedNavBar extends StatefulWidget {
  const MyCurvedNavBar({super.key});

  @override
  State<MyCurvedNavBar> createState() => _MyCurvedNavBarState();
}

class _MyCurvedNavBarState extends State<MyCurvedNavBar> {
  int _currentIndex = 0;

  final List<String> _titles = [
    'Dashboard',
    'Search',
    'Notification',
    'Profile',
  ];

  final List<Widget> _screens = [
    const DashboardScreen(),
    const SearchScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  final List<Color> _containerColors = [
    Colors.blue.shade100,
    Colors.green.shade100,
    Colors.red.shade100,
    Colors.purple.shade100,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          _titles[_currentIndex],
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        items: const <Widget>[
          Icon(Icons.dashboard, size: 30, color: Colors.white),
          Icon(Icons.search, size: 30, color: Colors.white),
          Icon(Icons.notifications, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
        color: Colors.teal[400]!,
        buttonBackgroundColor: Colors.blueGrey,
        backgroundColor: _containerColors[
            _currentIndex], // same color as container in nav bar
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

// Screen Widgets

// This is for Dashboard Screen
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      child: const Center(
        child: Card(
          elevation: 4,
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.dashboard, size: 60, color: Colors.blue),
                SizedBox(height: 20),
                Text(
                  'Welcome to the Code Flicks Dashboard!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Here you can find an overview of your activities.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// this is for search screen
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade100,
      child: const Center(
        child: Card(
          elevation: 4,
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.search, size: 60, color: Colors.green),
                SizedBox(height: 20),
                Text(
                  'Search for something...?',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Use the search bar to find what you need...😉',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// this is for notification screen
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade100,
      child: const Center(
        child: Card(
          elevation: 4,
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.notifications, size: 60, color: Colors.red),
                SizedBox(height: 20),
                Text(
                  'Notifications',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Check your latest updates and alerts here...',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// this is for profile screen
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade100,
      child: const Center(
        child: Card(
          elevation: 4,
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.person, size: 60, color: Colors.purple),
                SizedBox(height: 20),
                Text(
                  'Your Profile 🧑🏻‍💻',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Manage your personal information and settings⚙️',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
