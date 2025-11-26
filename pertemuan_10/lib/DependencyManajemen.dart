import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyController extends GetxController {
  var counter = 0.obs;

  void increment() {
    counter++;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyController());

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Manajemen Dependensi dengan GetX")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                    () => Text(
                  "Counter: ${Get.find<MyController>().counter}",
                  style: const TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.find<MyController>().increment();
                },
                child: const Text("Increment"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}