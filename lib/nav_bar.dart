import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyModernBottomNavBar extends StatefulWidget {
  const MyModernBottomNavBar({super.key});

  @override
  State<MyModernBottomNavBar> createState() => _MyModernBottomNavBarState();
}

class _MyModernBottomNavBarState extends State<MyModernBottomNavBar> {
  int _selectedIndex = 0;
  // for common text style in all text
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Text("Home", style: optionStyle),
    ),
    Center(
      child: Text("Likes", style: optionStyle),
    ),
    Center(
      child: Text("Search", style: optionStyle),
    ),
    Center(
      child: Text("Profile", style: optionStyle),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          children: [
            Expanded(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                "images/dev.jpeg",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8,
            ),
            child: GNav(
              rippleColor: Colors.grey[100]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 500),
              tabBackgroundColor: Colors.brown.shade400,
              backgroundColor: Colors.white,
              tabBorderRadius: 30,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                  textSize: 16,
                ),
                GButton(
                  icon: Icons.favorite,
                  text: "Like",
                  textSize: 16,
                ),
                GButton(
                  icon: Icons.search,
                  text: "Search",
                  textSize: 16,
                ),
                GButton(
                  icon: Icons.person,
                  text: "Person",
                  textSize: 16,
                )
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
