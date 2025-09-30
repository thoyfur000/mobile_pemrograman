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
        body: Stack(
          children: <Widget>[
            Container(
              width: 125,
              height: 125,
              color: Colors.blue,
              child: const Center(child: Text("1")),
            ), // Container 1 (Paling bawah/belakang)
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: const Center(child: Text("2")),
            ), // Container 2 (Di tengah)
            Container(
              width: 75,
              height: 75,
              color: Colors.yellow,
              child: const Center(child: Text("3")),
            ), // Container 3 (Paling atas/depan)
          ],
        ), // Stack
      ), // Scaffold
    ); // MaterialApp
  }
}