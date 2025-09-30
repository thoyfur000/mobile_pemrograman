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
        body: Row(
          children: <Widget>[
            Container(
              width: 90,
              height: 90,
              color: Colors.blue,
              child: const Center(child: Text("1")),
            ), // Container 1
            Container(
              width: 90,
              height: 90,
              color: Colors.green,
              child: const Center(child: Text("2")),
            ), // Container 2
            Container(
              width: 90,
              height: 90,
              color: Colors.yellow,
              child: const Center(child: Text("3")),
            ), // Container 3
          ],
        ), // Row
      ), // Scaffold
    ); // MaterialApp
  }
}