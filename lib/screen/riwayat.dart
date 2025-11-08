import 'package:flutter/material.dart';

class Riwayat extends StatelessWidget {
  const Riwayat({super.key});

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFFD67B89);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primary,
        title: const Text(
          'Riwayat Skrining',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                decoration: BoxDecoration(
                  color: primary.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Daftar Riwayat Skrining',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),

              const SizedBox(height: 20),

              // Riwayat ke-1
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: primary, width: 1.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Tanggal: 08 November 2025',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 6),
                      const Text('Hasil Skrining: Non Anemia',
                          style: TextStyle(fontSize: 14, color: Colors.black87)),
                      const SizedBox(height: 6),
                      const Text('Keterangan: Kondisi normal.',
                          style: TextStyle(fontSize: 14, color: Colors.black54)),
                    ],
                  ),
                ),
              ),

              // Riwayat ke-2
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: primary, width: 1.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Tanggal: 05 November 2025',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 6),
                      const Text('Hasil Skrining: Anemia Ringan',
                          style: TextStyle(fontSize: 14, color: Colors.black87)),
                      const SizedBox(height: 6),
                      const Text('Keterangan: Disarankan konsumsi zat besi.',
                          style: TextStyle(fontSize: 14, color: Colors.black54)),
                    ],
                  ),
                ),
              ),

              // Riwayat ke-3
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: primary, width: 1.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Tanggal: 01 November 2025',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 6),
                      const Text('Hasil Skrining: Anemia Sedang',
                          style: TextStyle(fontSize: 14, color: Colors.black87)),
                      const SizedBox(height: 6),
                      const Text(
                          'Keterangan: Perlu pemeriksaan lanjutan ke fasilitas kesehatan.',
                          style: TextStyle(fontSize: 14, color: Colors.black54)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
