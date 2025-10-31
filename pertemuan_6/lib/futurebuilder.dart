import 'package:flutter/material.dart';

void main() {
  runApp(const ListNamaApp());
}

class ListNamaApp extends StatelessWidget {
  const ListNamaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Nama',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ListNamaPage(),
    );
  }
}

class ListNamaPage extends StatelessWidget {
  const ListNamaPage({super.key});
  Future<List<Map<String, String>>> fetchData() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      {
        "nama": "Thoyfur",
        "foto": "https://reqres.in/img/faces/1-image.jpg"
      },
      {
        "nama": "Syarif",
        "foto": "https://reqres.in/img/faces/2-image.jpg"
      },
      {
        "nama": "Rizki",
        "foto": "https://reqres.in/img/faces/3-image.jpg"
      },
      {
        "nama": "Reza",
        "foto": "https://reqres.in/img/faces/4-image.jpg"
      },
      {
        "nama": "Willy",
        "foto": "https://reqres.in/img/faces/5-image.jpg"
      },
      {
        "nama": "Genio",
        "foto": "https://reqres.in/img/faces/6-image.jpg"
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Builder"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder<List<Map<String, String>>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Terjadi kesalahan: ${snapshot.error}"));
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("Tidak ada data"));
          }

          final data = snapshot.data!;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final item = data[index];
              final nama = item["nama"] ?? "";
              final fotoUrl = item["foto"] ?? "";

              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: fotoUrl.isNotEmpty
                      ? NetworkImage(fotoUrl)
                      : null,
                  backgroundColor: Colors.grey[200],
                ),
                title: Text(
                  nama,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text("Detail kontak belum tersedia"),
              );
            },
          );
        },
      ),
    );
  }
}