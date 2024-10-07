import 'package:flutter/material.dart';

class My_BottomNavBar extends StatefulWidget {
  const My_BottomNavBar({super.key});

  @override
  State<My_BottomNavBar> createState() => _My_BottomNavBarState();
}

class _My_BottomNavBarState extends State<My_BottomNavBar> {
  int _currentIndex =
      0; // current index of the selected bottom navigation bar item

  // list of pages to display based on the selected item

  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const ProfilePage(),
    const SettingsPage(),
  ];

  // function to handle item taps

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index; // update the current index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
        backgroundColor: Colors.teal[100],
      ),
      body: _pages[_currentIndex], // display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 148, 198, 240),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Color.fromARGB(255, 135, 232, 138),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color.fromARGB(255, 232, 219, 100),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Color.fromARGB(255, 225, 153, 238),
          ),
        ],

        currentIndex: _currentIndex, // set the current index
        selectedItemColor: Colors.white, // color of selected item text and icon

        unselectedItemColor: Colors.black54, // color of unselected items

        showUnselectedLabels: true, // show lables for unselected items
        onTap: _onItemTapped, // handle taps on items
        elevation: 5, // elevation for shadow effect
      ),
    );
  }
}

// Home Page Widget
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Home Page",
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Search Page Widget
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Search Page",
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Profile Page Widget
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Profile Page",
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Settings Page Widget
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Settings Page",
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      ),
    );
  }
}
