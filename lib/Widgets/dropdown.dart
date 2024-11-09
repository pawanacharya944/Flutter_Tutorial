import 'package:flutter/material.dart';

class My_DropdownButton extends StatefulWidget {
  const My_DropdownButton({super.key});

  @override
  State<My_DropdownButton> createState() => _My_DropdownButtonState();
}

class _My_DropdownButtonState extends State<My_DropdownButton> {
  String? selectedValue; // Variable to hold the selected value

  final List<String> items = [
    'Coding',
    'Photography',
    'Reading',
    'Cooking',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown Button"),
        backgroundColor: Colors.teal[100],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: DropdownButton<String>(
            isExpanded:
                true, // makes the dropdown button expand to fill available space
            hint: Text(
              "Select Hobby",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold),
            ),
            items: items.map((String item) {
              return DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(fontSize: 18),
                  ));
            }).toList(),
            value: selectedValue, // current selected value
            onChanged: (String? value) {
              setState(() {
                selectedValue = value; // update the selected value
              });
            },
            dropdownColor:
                Colors.teal[100], // background color of the dropdown menu
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            underline: Container(), // remove underline for a cleaner look
            iconEnabledColor: Colors.black,
            iconSize: 40,
          ),
        ),
      ),
    );
  }
}
