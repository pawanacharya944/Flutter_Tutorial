import 'package:first_project/toggle_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Project",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyToggleText(),
    );
  }
}
