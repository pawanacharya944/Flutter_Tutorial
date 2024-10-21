import 'package:flutter/material.dart';

class MyTimePicker extends StatefulWidget {
  const MyTimePicker({super.key});

  @override
  State<MyTimePicker> createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> {
  TimeOfDay _selectedTime = TimeOfDay.now(); // holds the selected time

  // function to show the time picker dialog
  Future<void> _selectTime(BuildContext context) async {
    // show the time picker dialog

    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime, // sets the initial time to current time
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.dark(),
          child: child!,
        );
      },
    );

    // if a time is picked, update the state with the new time

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked; // update the selected time
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green[200]!, Colors.blue[300]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white
                      .withOpacity(0.9), // semi-transparent white background
                  borderRadius: BorderRadius.circular(26),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                ),
                child: Text(
                  // format time in 12-hour format with AM/PM
                  '${_selectedTime.hour % 12 == 0 ? 12 : _selectedTime.hour % 12}:${_selectedTime.minute.toString().padLeft(2, '0')} ${_selectedTime.hour >= 12 ? 'PM' : 'AM'}',
                  style: TextStyle(
                    fontSize: 44,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => _selectTime(context),
                child: Text('Choose Time'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.deepPurpleAccent,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
