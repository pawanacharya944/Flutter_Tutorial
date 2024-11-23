import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyToast extends StatelessWidget {
  const MyToast({super.key});

  // function to show toast message

  void showToast(BuildContext context) {
    Fluttertoast.showToast(
      msg: "You've just Subscribed to Code Flicks. Let's Build!",
      toastLength: Toast.LENGTH_SHORT, // toast duration
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16,
      webPosition: "center",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'F l u t t e r  T o a s t',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade200, Colors.teal.shade200],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () => showToast(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo.shade400,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
            ),
            child: const Text(
              'Subscribe Code Flicks',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
