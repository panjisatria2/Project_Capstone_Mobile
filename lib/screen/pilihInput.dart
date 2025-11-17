import 'package:anemaware/screen/pertanyaan.dart';
import 'package:flutter/material.dart';

class Pilihinput extends StatefulWidget {
  const Pilihinput({super.key});

  @override
  State<Pilihinput> createState() => _PilihinputState();
}

class _PilihinputState extends State<Pilihinput> {
  String selected = "konjungtiva";

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFFD63A63);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => setState(() => selected = "konjungtiva"),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: selected == "konjungtiva"
                          ? primary
                          : primary.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text(
                      "Konjungtiva",
                      style: TextStyle(
                        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                GestureDetector(
                  onTap: () => setState(() => selected = "kuku"),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: selected == "kuku"
                          ? primary
                          : primary.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text(
                      "Kuku/Nail",
                      style: TextStyle(
                        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Container(
              height: 220,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                border: Border.all(color: primary, width: 1.5),
                borderRadius: BorderRadius.circular(18),
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Kamera
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 45, vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      "Kamera",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                GestureDetector(
                  onTap: () {
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 45, vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      "Pilih Galeri",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 100),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pertanyaan()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 120,
                  vertical: 18,
                ),
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
