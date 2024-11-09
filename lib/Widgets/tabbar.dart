import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // list of tabs with icon

  final List<Tab> myTabs = <Tab>[
    const Tab(icon: Icon(Icons.home), text: 'Home'),
    const Tab(icon: Icon(Icons.person), text: 'Profile'),
    const Tab(icon: Icon(Icons.settings), text: 'Settings'),
  ];

  @override
  void initState() {
    super.initState();
    // initialize the tabcontroller with the number of tabs and vsync
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    // dispose of the controller when not needed
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'T A B B A R',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.blue[200],
        bottom: TabBar(
          tabs: myTabs,
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorWeight: 4.0,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.blueGrey,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // content for home tab
          Container(
            color: Colors.green[300],
            child: const Center(
              child: Text(
                'Welcome to Home 🏠',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
          ),
          // content for profile tab
          Container(
            color: Colors.green[300],
            child: const Center(
              child: Text(
                'Your Profile 🧑🏻‍💻',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
          ),

          // content for settings tab
          Container(
            color: Colors.green[300],
            child: const Center(
              child: Text(
                'System Settings ⚙️',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
