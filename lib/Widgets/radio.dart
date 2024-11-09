import 'package:flutter/material.dart';

class MyRadioButtons extends StatefulWidget {
  const MyRadioButtons({super.key});

  @override
  _MyRadioButtonsState createState() => _MyRadioButtonsState();
}

class _MyRadioButtonsState extends State<MyRadioButtons> {
  // Variable to hold the currently selected value
  int? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Radio Buttons',
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Radio button for option 1
            RadioListTile<int>(
              title: const Text('Option 1',
                  style: TextStyle(fontSize: 26)), // Increased font size
              value: 1,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value; // Update the selected value
                });
              },
              activeColor: Colors.green, // Color when selected
              fillColor: WidgetStateProperty.all(
                  Colors.green), // Fill color when selected
              visualDensity: VisualDensity
                  .compact, // Compact visual density for larger buttons
            ),
            // Radio button for option 2
            RadioListTile<int>(
              title: const Text('Option 2',
                  style: TextStyle(fontSize: 26)), // Increased font size
              value: 2,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value; // Update the selected value
                });
              },
              activeColor: Colors.blue, // Color when selected
              fillColor: WidgetStateProperty.all(
                  Colors.blue), // Fill color when selected
              visualDensity: VisualDensity
                  .compact, // Compact visual density for larger buttons
            ),
            // Radio button for option 3
            RadioListTile<int>(
              title: const Text('Option 3',
                  style: TextStyle(fontSize: 26)), // Increased font size
              value: 3,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value; // Update the selected value
                });
              },
              activeColor: Colors.red, // Color when selected
              fillColor: WidgetStateProperty.all(
                  Colors.red), // Fill color when selected
              visualDensity: VisualDensity
                  .compact, // Compact visual density for larger buttons
            ),
            const SizedBox(height: 50), // Spacer for better UI layout

            // Elevated button with increased size and padding
            ElevatedButton(
              onPressed: () {
                // Action to be performed on button press, e.g., submit selection
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text(
                      'Selected Option',
                    ),
                    content: Text(
                        'You selected Option $_selectedValue'), // Display selected option
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal:
                        32.0), // Increased padding for larger button size
                textStyle: const TextStyle(
                    fontSize: 22), // Increased font size for button text
              ),
              child: const Text('Submit'), // Button to submit selection
            ),
          ],
        ),
      ),
    );
  }
}
