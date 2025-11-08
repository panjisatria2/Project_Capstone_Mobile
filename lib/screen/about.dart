import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header dengan back button
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                  SizedBox(width: 10,),
                  const Text(
                    'About AnemAware',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // Gambar karakter
              Center(
                child: Image.asset(
                  'assets/navigasi/logoooo.png',
                  width: 150,
                  height: 150,
                ),
              ),

              const SizedBox(height: 30),

              // Deskripsi utama
              const Text(
                'AnemAware adalah Sistem Pencegahan dan Penanganan Risiko Anemia yang dirancang khusus untuk Remaja Putri. Kami memahami bahwa anemia pada remaja putri adalah masalah kesehatan yang umum, seringkali disebabkan oleh siklus menstruasi, pola makan, atau kurangnya kesadaran akan gejala awal.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 30),

              // Misi Utama
              const Text(
                'Misi Utama:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'AnemAware adalah Sistem Pencegahan dan Penanganan Risiko Anemia yang dirancang khusus untuk Remaja Putri. Kami memahami bahwa anemia pada remaja putri adalah masalah kesehatan yang umum, seringkali disebabkan oleh siklus menstruasi, pola makan, atau kurangnya kesadaran akan gejala awal.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 30),

              // Fiitur Utama
              const Text(
                'Fiitur Utama:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 20),

              // Fitur 1
              const Text(
                '1. Skrining Risiko Anemia',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Fitur ini memprediksi kategori risiko anemia (Normal, Ringan, Sedang, Berat) dengan menggabungkan hasil analisis AI dari input gambar (konjungtiva atau kuku) dengan data dari form gejala dan siklus menstruasi.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 20),

              // Fitur 2
              const Text(
                '2. Riwayat dan Unduh PDF',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Fitur ini secara otomatis menyimpan riwayat semua hasil skrining Anda , yang dapat diunduh kapan saja dalam bentuk file PDF untuk dibagikan kepada tenaga medis.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 20),

              // Fitur 3
              const Text(
                '3. Chatbot dan Konsultasi Dokter',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Fitur ini menyediakan Chatbot untuk menjawab pertanyaan umum, "Tanya Dokter Anonim" untuk pertanyaan spesifik, dan tombol "Hubungi Dokter" yang mengarahkan Anda ke WhatsApp untuk konsultasi daring.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 20),

              // Fitur 4
              const Text(
                '4. Konten Edukasi',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Fitur ini menyajikan berbagai konten edukasi singkat dan relevan yang dirancang untuk remaja putri seputar anemia, nutrisi seimbang, dan kesehatan umum.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}