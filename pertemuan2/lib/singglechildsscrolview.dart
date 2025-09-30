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
          title: const Text(
              "Aplikasi pertamaku", style: TextStyle(color: Colors.white)),
          // Di Flutter versi baru, Colors.white sering ditambahkan secara eksplisit
        ), // AppBar
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [

              Container(width: 90, height: 90, color: Colors.purple),
              // Container 1
              Container(width: 90, height: 90, color: Colors.purpleAccent),
              // Container 2
              Container(width: 90, height: 90, color: Colors.deepPurpleAccent),
              // Container 3
              Container(width: 90, height: 90, color: Colors.purple),
              // Container 1
              Container(width: 90, height: 90, color: Colors.deepPurple),
              // Container 2
              Container(width: 90, height: 90, color: Colors.deepPurpleAccent),
              // Container 3
              Container(width: 90, height: 90, color: Colors.purple),
              // Container 1
              Container(width: 90, height: 90, color: Colors.deepPurple),
              // Container 2
              Container(width: 90, height: 90, color: Colors.deepPurpleAccent),
              // Container 3
              Container(width: 90, height: 90, color: Colors.purple),
              // Container 10
            ],
          ),
        ),
      ),
    );
  }
}