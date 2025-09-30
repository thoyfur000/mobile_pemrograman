import 'package:flutter/material.dart';

void main() {
  runApp(const HaloDuniaku());
}

class HaloDuniaku extends StatelessWidget {
  const HaloDuniaku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text("Aplikasi pertamaku"),
        ), // AppBar
        body: const Center(
          child: Icon(
            Icons.home,
            size: 90.0,
            color: Colors.purple,
          ), // Icon
        ), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}