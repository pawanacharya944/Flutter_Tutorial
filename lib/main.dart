import 'package:first_project/slide_action.dart';
import 'package:flutter/material.dart';

import 'animated_list.dart';

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
      home: MyAnimatedList(),
    );
  }
}
