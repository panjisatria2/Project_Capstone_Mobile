import 'package:anemaware/screen/dashboard.dart';
import 'package:anemaware/screen/homepage.dart';
import 'package:anemaware/screen/riwayat.dart';
import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  const Hasil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: const Color(0xFFC6285A),
                width: 2,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Judul
                Text(
                  "Normal",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 30),

                // Deskripsi Hasil
                const Text(
                  "Hasil Skrining anda normal, jaga terus kesehatan anda",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFC6285A),
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Note :  Bahwasanya Hasil ini merupakan hasil Pemeriksaan Aplikasi",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFC6285A),
                  ),
                ),

                const SizedBox(height: 50),

                // Tombol
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Tombol Lihat Riwayat
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Riwayat(),
                          ),
                        );
                      },
                      child: Container(
                        width: 160,
                        height: 55,
                        decoration: BoxDecoration(
                          color: const Color(0xFFC6285A),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Center(
                          child: Text(
                            "Lihat Riwayat",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 20),

                    // Tombol Selesai
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                              (route) => false,
                        );
                      },
                      child: Container(
                        width: 160,
                        height: 55,
                        decoration: BoxDecoration(
                          color: const Color(0xFFC6285A),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Center(
                          child: Text(
                            "Selesai",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}