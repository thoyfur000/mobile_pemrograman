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
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // menjalankan sebuah fungsi
              print("klik");
            },
            child: const Text("Clic Me!"),
          ), // ElevatedButton
        ), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}