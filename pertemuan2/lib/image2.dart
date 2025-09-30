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
          backgroundColor: Colors.pink,
          title: const Text("Aplikasi pertamaku"),
        ), // AppBar
        body: Center(
          child: Image(
            image: const NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcligfgz9uR7mQ9ozUG_QAj0fYmHrRF-GyGH3I7NjJyk95ZvnSdlHAVx3CcsTF352ysbY&usqp=CAU",
            ),
          ),
          // Untuk menampilkan gambar, syarat harus terkoneksi internet
        ), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}