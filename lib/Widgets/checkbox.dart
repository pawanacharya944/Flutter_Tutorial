import 'package:flutter/material.dart';

class My_CheckBoxListTile extends StatefulWidget {
  const My_CheckBoxListTile({super.key});

  @override
  State<My_CheckBoxListTile> createState() => _My_CheckBoxListTileState();
}

class _My_CheckBoxListTileState extends State<My_CheckBoxListTile> {
  // variable to hold the state of the checkbox

  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CheckBoxListTile",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.yellow[200]!,
                  Colors.green[200]!,
                ],
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5) // this is the shadow position
                    )
              ]),
          child: CheckboxListTile(
            // this is foe the title of the checkbox list tile
            title: const Text(
              "I agree to the terms and conditions",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            // subtitle for additional info

            subtitle: Text(
              "Please read the terms and condition before proceeding.",
              style: TextStyle(
                color: Colors.grey[800],
              ),
            ),
            value: _isChecked,
            onChanged: (bool? value) {
              setState(
                () {
                  _isChecked =
                      value ?? false; // update state when checkbox is tapped
                },
              );
            },

            // let's customize the appearance of the checkbox

            activeColor: Colors.blueAccent, // this is the color when checked,
            checkColor: Colors.white, // color of the check mark

            secondary: Icon(
              Icons.check_circle, // this is the icon displayed on the left side

              color: _isChecked ? Colors.blueAccent : Colors.grey, size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
