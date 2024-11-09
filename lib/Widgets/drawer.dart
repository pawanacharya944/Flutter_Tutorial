import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Drawer",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        backgroundColor: Colors.green[300],
      ),
      drawer: Drawer(
        backgroundColor: Colors.green[200],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // drawer header

            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green[300]),
              child: const Text(
                "Drawer Header",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Divider(
              thickness: 2,
              color: Colors.red,
            ),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("LogOut"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Divider(
              thickness: 2,
              color: Colors.red,
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Code Flicks😉",
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.purple[300]),
        ),
      ),
    );
  }
}
