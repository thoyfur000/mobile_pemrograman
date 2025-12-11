import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'log_model.dart';

class LogStorage {

  // 1. Mendapatkan referensi file lokal
  Future<File> get _localFile async {
    // Menggunakan path_provider untuk mendapatkan direktori dokumen aplikasi
    final directory = await getApplicationDocumentsDirectory();
    final path = directory.path;
    return File('$path/device_logs.json');
  }

  // 2. Memuat semua log dari file
  Future<List<LogEntry>> loadLogs() async {
    try {
      final file = await _localFile;

      if (!await file.exists()) {
        return []; // Jika file belum ada, return list kosong
      }

      // Baca file JSON
      final contents = await file.readAsString();

      // Decode JSON
      final List<dynamic> jsonList = jsonDecode(contents);

      // Map ke object LogEntry
      return jsonList.map((json) => LogEntry.fromJson(json)).toList();

    } catch (e) {
      print("Error memuat log: $e");
      return [];
    }
  }

  // 3. Menyimpan log ke file
  Future<File> saveLogs(List<LogEntry> logs) async {
    // Ubah LogEntry menjadi Map
    final jsonList = logs.map((log) => log.toJson()).toList();

    // Encode menjadi JSON string
    final String contents = jsonEncode(jsonList);

    final file = await _localFile;

    // Tulis ke file
    return file.writeAsString(contents);
  }
}
