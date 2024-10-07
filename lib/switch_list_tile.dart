import 'package:flutter/material.dart';

class My_SwitchListTile extends StatefulWidget {
  const My_SwitchListTile({super.key});

  @override
  State<My_SwitchListTile> createState() => _My_SwitchListTileState();
}

class _My_SwitchListTileState extends State<My_SwitchListTile> {
  // variable to hold the state of the switch

  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SwitchListTile"),
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // switchlisttile widget
            SwitchListTile(
              title: const Text(
                "Enable Notifications",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Recieve Daily Updates From Code Flicks"),
              value: _isSwitched, // Current state of the switch
              onChanged: (bool value) {
                setState(() {
                  _isSwitched = value; // update the switch state
                });
              },

              secondary: const Icon(
                Icons.notifications,
                color: Colors.red,
              ),
              activeColor: Colors.green, // color when the switch is on
              inactiveThumbColor: Colors.red, // color when the switch is off
            ),

            const SizedBox(
              height: 20, // space between elements
            ),

            Text(
              _isSwitched
                  ? 'Notification is ON'
                  : 'Notification is OFF', // Display current state message
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
