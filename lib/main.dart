import 'package:flutter/material.dart';

import 'text_kit.dart';

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
      home: MyAnimatedTexKit(),
    );
  }
}
