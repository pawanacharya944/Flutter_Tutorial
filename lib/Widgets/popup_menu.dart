import 'package:flutter/material.dart';

class MyPopupMenu extends StatefulWidget {
  const MyPopupMenu({super.key});

  @override
  State<MyPopupMenu> createState() => _MyPopupMenuState();
}

class _MyPopupMenuState extends State<MyPopupMenu> {
  String selectedOption = 'Select an Option';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PopupMenuButton',
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert, size: 40),
              onSelected: (String value) {
                setState(() {
                  selectedOption = value; // update the selected option
                });

                // show a snackbar with the selected option
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(
                    'Selected: $value',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  )),
                );
              },
              itemBuilder: (BuildContext context) {
                return [
                  // define menu items with custom styling

                  PopupMenuItem<String>(
                    value: 'Profile 🧑🏻‍💻',
                    child: _buildMenuItem(Icons.person, 'Profile'),
                  ),

                  PopupMenuItem<String>(
                    value: 'Settings ⚙️',
                    child: _buildMenuItem(Icons.settings, 'Settings'),
                  ),

                  PopupMenuItem<String>(
                    value: 'Logout [→',
                    child: _buildMenuItem(Icons.logout, 'Logout'),
                  ),
                ];
              },
            ),
            const SizedBox(height: 120),

            // display selected option text

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.green[300],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ]),
              child: Text(
                selectedOption,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // helper method to build a styled menu item

  Widget _buildMenuItem(IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade400,
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 3) // changes the position of shadow
              ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.blueGrey),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
