import 'package:anemaware/screen/pertanyaan.dart';
import 'package:flutter/material.dart';

class Pilihinput extends StatefulWidget {
  const Pilihinput({super.key});

  @override
  State<Pilihinput> createState() => _PilihinputState();
}

class _PilihinputState extends State<Pilihinput> {
  final Color primary = const Color(0xFFD63A63);

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

              // TITLE
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  "Input Gambar Konjungtiva atau kuku",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // ============================
              // KONJUNGTIVA
              // ============================
              const Text(
                "Konjungtiva :",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),

              Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: primary, width: 1.5),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _pinkButton("Kamera"),
                  const SizedBox(width: 20),
                  _pinkButton("Pilih Galeri"),
                ],
              ),

              const SizedBox(height: 40),

              // ============================
              // KUKU
              // ============================
              const Text(
                "Kuku :",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),

              Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: primary, width: 1.5),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _pinkButton("Kamera"),
                  const SizedBox(width: 20),
                  _pinkButton("Pilih Galeri"),
                ],
              ),

              const SizedBox(height: 60),

              // NEXT BUTTON
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => Pertanyaan()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  // WIDGET BUTTON PINK
  Widget _pinkButton(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}