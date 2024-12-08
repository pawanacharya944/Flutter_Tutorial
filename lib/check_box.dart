import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false; // tracks the state of the checkbox
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'C h e c k B o x',
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Accept Terms & Conditions: ',
                  style: TextStyle(fontSize: 26),
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  fillColor: WidgetStateProperty.resolveWith((states) {
                    if (states.contains(WidgetState.disabled)) {
                      return Colors.grey;
                    }
                    return Colors.blue;
                  }),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  splashRadius: 20,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              isChecked
                  ? 'You agreed to the terms.'
                  : 'You must agree to proceed.',
              style: TextStyle(
                  fontSize: 18,
                  color: isChecked ? Colors.green : Colors.red,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
