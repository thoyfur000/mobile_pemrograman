import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Tema utama aplikasi adalah terang (putih)
        brightness: Brightness.light,
        // Tema AppBar diatur agar berwarna putih dengan ikon/teks hitam
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 1,
        ),
      ),
      home: const InstagramProfilePage(),
    );
  }
}

class InstagramProfilePage extends StatelessWidget {
  const InstagramProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Row(
          children: [
            Text("username", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Icon(Icons.keyboard_arrow_down, size: 20),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined, size: 26),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, size: 26),
          ),
        ],
      ),
      body: ListView(
        children: [
          // 1. HEADER PROFIL DAN STATISTIK
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              children: [
                // FOTO PROFIL
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, size: 40, color: Colors.white),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _StatColumn(count: "3", label: "posts"),
                      _StatColumn(count: "507", label: "followers"),
                      _StatColumn(count: "458", label: "following"),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // 2. BIO (Nama dan Deskripsi)
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ali Muhammad Thoyfur Ahsyai",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Seni adalah ledakan."),
                Text(
                  "seni.com",
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),

          // 3. TOMBOL EDIT PROFILE
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  elevation: 0,
                  side: const BorderSide(color: Colors.grey, width: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text(
                  "Edit Profile",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ),
            ),
          ),

          // 4. SOROTAN (HIGHLIGHTS)
          const Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 5.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _HighlightItem(label: "highlight"),
                  _HighlightItem(label: "highlight"),
                  _HighlightItem(label: "highlight"),
                  _HighlightItem(label: "Tambah Baru", isAddButton: true),
                ],
              ),
            ),
          ),

          // 5. TAB ICONS
          const Divider(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.grid_on, color: Colors.black, size: 30),
              Icon(Icons.video_library_outlined, color: Colors.grey, size: 30),
              Icon(Icons.person_pin_outlined, color: Colors.grey, size: 30),
            ],
          ),
          const Divider(height: 0),

          // 6. POSTS GRID (ItemCount: 3)
          const _PostGrid(itemCount: 3),
        ],
      ),
    );
  }
}

// Widget Bantuan untuk Kolom Statistik
class _StatColumn extends StatelessWidget {
  final String count;
  final String label;

  const _StatColumn({required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(label, style: const TextStyle(fontSize: 13)),
      ],
    );
  }
}

// Widget Bantuan untuk Sorotan (Highlights) - Fix: Menggunakan Container untuk border
class _HighlightItem extends StatelessWidget {
  final String label;
  final bool isAddButton;

  const _HighlightItem({required this.label, this.isAddButton = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // Menambahkan border hanya jika isAddButton = true
              border: isAddButton
                  ? Border.all(color: Colors.black, width: 1.5)
                  : null,
            ),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: isAddButton ? Colors.white : Colors.grey.shade300,
              child: isAddButton
                  ? const Icon(Icons.add, size: 30, color: Colors.black)
                  : const Icon(Icons.favorite, size: 20, color: Colors.black),
            ),
          ),
          const SizedBox(height: 5),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

// Widget Bantuan untuk Grid Postingan
class _PostGrid extends StatelessWidget {
  final int itemCount;

  const _PostGrid({required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount, // Hanya 3 item sesuai permintaan
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
      ),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.grey.shade300, // Placeholder warna postingan
        );
      },
    );
  }
}