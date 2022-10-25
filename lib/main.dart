import 'package:flutter/material.dart';
import 'package:slide_to_go/animation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slide to act',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TypingAnimation(),
    );
  }
}
