import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        title: const Text(
          'D r a w e r H e a d e r',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.teal.shade100,
      ),
      drawer: Drawer(
        backgroundColor: Colors.indigo.shade100,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(16),
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.teal.shade200, Colors.teal.shade300],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(66, 36, 23, 23),
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/dev.jpeg'),
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Code Flicks',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'codeflicks@gmail.com',
                        style: TextStyle(
                            color: Colors.blueGrey.shade800, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // drawer items

            ListTile(
              leading: const Icon(Icons.home, color: Colors.blueGrey),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.account_circle, color: Colors.blueGrey),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings, color: Colors.blueGrey),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.logout, color: Colors.redAccent),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Swipe from left edge to open the drawer!',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
