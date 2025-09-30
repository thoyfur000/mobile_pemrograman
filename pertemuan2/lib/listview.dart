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
          title: const Text("Aplikasi pertama"),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,

          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.purple[100],
              margin: const EdgeInsets.all(8.0),
              child: const Center(child: Text("1")),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.purple[200],
              margin: const EdgeInsets.all(8.0),
              child: const Center(child: Text("2")),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.purple[300],
              margin: const EdgeInsets.all(8.0),
              child: const Center(child: Text("3")),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.purple[400],
              margin: const EdgeInsets.all(8.0),
              child: const Center(child: Text("4")),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.purple[500],
              margin: const EdgeInsets.all(8.0),
              child: const Center(child: Text("5")),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.purple[600],
              margin: const EdgeInsets.all(8.0),
              child: const Center(child: Text("6")),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.purple[700],
              margin: const EdgeInsets.all(8.0),
              child: const Center(child: Text("7")),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.purple[800],
              margin: const EdgeInsets.all(8.0),
              child: const Center(child: Text("")),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.purple[900],
              margin: const EdgeInsets.all(8.0),
              child: const Center(child: Text("9")),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.purple,
              margin: const EdgeInsets.all(8.0),
              child: const Center(
                child: Text("10", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}