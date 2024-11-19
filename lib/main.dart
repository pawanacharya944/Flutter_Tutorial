import 'package:first_project/percent_indicator.dart';
import 'package:flutter/material.dart';

import 'test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Project",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyCircularPercentIndicator(),
    );
  }
}
