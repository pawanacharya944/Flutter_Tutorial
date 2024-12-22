import 'package:flutter/material.dart';

class MyAboutListTile extends StatelessWidget {
  const MyAboutListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'A b o u t L i s t T i l e',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.teal.shade200,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.info, color: Colors.blueGrey),
            title: const Text(
              'General Info',
              style: TextStyle(fontSize: 18),
            ),
            subtitle: const Text('Details about the app'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('General Info Clicked'),
                ),
              );
            },
          ),

          const Divider(),
          // AboutListTile

          AboutListTile(
            icon: const Icon(Icons.help, color: Colors.teal),
            applicationName: 'Flutter App',
            applicationVersion: '1.0.0',
            applicationIcon:
                const Icon(Icons.flutter_dash, size: 60, color: Colors.blue),
            applicationLegalese: '© 2024 Code Flicks. All rights reserved.',
            aboutBoxChildren: const [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'This app is a demo showcasing the AboutListTile Widget. Learn Flutter with Code Flicks!',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Thank You for using this app!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
            child: Text(
              'About this App',
              style: TextStyle(fontSize: 18, color: Colors.teal.shade800),
            ),
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.settings, color: Colors.blueGrey),
            title: const Text(
              'Settings',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Settings Clicked'),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
