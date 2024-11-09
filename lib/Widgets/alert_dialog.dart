import 'package:flutter/material.dart';

class My_AlertDialog extends StatelessWidget {
  const My_AlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert_Dialog"),
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showAlertDialog(context),
          style: ElevatedButton.styleFrom(
            elevation: 6,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: const Text(
            "Show AlertDialog",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

// function to display the AlertDialog

void _showAlertDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Row(
            children: [
              Icon(
                Icons.warning,
                color: Colors.red,
              ),
              SizedBox(
                width: 10, // spacing between icon and text
              ),
              Text("Warning!"), // title of the dialog
            ],
          ),
          content: const Text(
            "Are you ready to embrace the Chaos? 😅\n"
            'Once you hit "OK," there is no turning back 🔙, just coding 🧑🏻‍💻 ahead😉 \n'
            '                                   - Code Flicks🔥',
            style: TextStyle(fontSize: 16),
          ),
          actions: <Widget>[
            TextButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.red,
              ),
              child: const Text(
                "Cancel",
                style: TextStyle(
                  color: Colors.red, // cancel button with custom color
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop(); // close the dialog
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.green,
              ),
              child: const Text(
                "OK",
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          backgroundColor: Colors.white,
          elevation: 10,
        );
      });
}
