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
      home: const WorkshopPage(),
    );
  }
}

class WorkshopPage extends StatelessWidget {
  const WorkshopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workshop Kampus'),
        backgroundColor: Colors.blueAccent,
      ),
      // Menggunakan ListView agar bisa di-scroll
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          // Fungsi untuk membuat kartu workshop
          buildWorkshopCard(
            'Flutter Development for Beginners',
            '12 Oktober 2026',
            'Lab Komputer 4',
            'Sisa Kuota: 15',
          ),
          buildWorkshopCard(
            'UI/UX Design Masterclass',
            '15 Oktober 2026',
            'Aula Gedung B',
            'Sisa Kuota: 5',
          ),
        ],
      ),
    );
  }

  // Widget Kartu Workshop sesuai Soal 1
  Widget buildWorkshopCard(String judul, String tgl, String lokasi, String kuota) {
    return Card(
      elevation: 4, // Efek bayangan agar rapi
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul Workshop (Bold & Besar)
            Text(
              judul,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Row untuk Tanggal dan Lokasi (Hemat Ruang)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(tgl),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(lokasi),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Info Kuota
            Text(
              kuota,
              style: const TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 15),

            // Tombol Daftar (ElevatedButton)
            SizedBox(
              width: double.infinity, // Tombol selebar kartu
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                ),
                child: const Text('DAFTAR SEKARANG'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}