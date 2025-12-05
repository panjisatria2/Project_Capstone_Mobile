import 'package:anemaware/screen/hasil.dart';
import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  Pertanyaan({super.key});

  final Color primary = const Color(0xFFD63A63);

  final List<Map<String, dynamic>> questions = [
    {
      "key": "lemas",
      "tanya":
      "Seberapa sering kamu merasa lemas atau mager padahal aktivitasmu biasa aja?",
      "opsi": ["Tidak", "Kadang", "Sering"]
    },
    {
      "key": "pusing",
      "tanya":
      "Sering merasa pusing, kliyengan, atau pandangan gelap pas bangun dari duduk?",
      "opsi": ["Tidak", "Kadang", "Sering"]
    },
    {
      "key": "fokus",
      "tanya":
      "Susah fokus pas belajar atau ngantuk berat di kelas?",
      "opsi": ["Tidak", "Kadang", "Sering"]
    },
    {
      "key": "pucat",
      "tanya": "Apakah wajah, bibir, atau kelopak matamu terlihat pucat?",
      "opsi": ["Tidak", "Kadang", "Terlihat Jelas"]
    },
    {
      "key": "jantung",
      "tanya": "Jantung deg-degan atau ngos-ngosan pas naik tangga/jalan cepat?",
      "opsi": ["Tidak", "Kadang", "Sering"]
    },
    {
      "key": "haid_banyak",
      "tanya":
      "Pas lagi haid, apakah darahnya keluar banyak banget (ganti pembalut < 3 jam)?",
      "opsi": ["Tidak", "Hari 1-2 saja", "Tiap Haid"]
    },
    {
      "key": "haid_lama",
      "tanya": "Apakah durasi haid kamu panjang (lebih dari 7 hari)?",
      "opsi": ["Tidak", "Jarang", "Selalu"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Jawaban TIDAK DISIMPAN (langsung reset setiap build)
    Map<String, String?> jawaban = {
      for (var q in questions) q["key"]: null,
    };

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: StatefulBuilder(
          builder: (context, setState) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  const Text(
                    "Pertanyaan",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 40),

                  for (var q in questions) ...[
                    Text(
                      q["tanya"],
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF6E7C7C),
                      ),
                    ),
                    const SizedBox(height: 15),

                    Wrap(
                      runSpacing: 15,
                      spacing: 40,
                      children: [
                        for (var opsi in q["opsi"])
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                jawaban[q["key"]] = opsi;
                              });
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 26,
                                  height: 26,
                                  decoration: BoxDecoration(
                                    border:
                                    Border.all(color: primary, width: 2),
                                    borderRadius: BorderRadius.circular(4),
                                    color: jawaban[q["key"]] == opsi
                                        ? primary
                                        : Colors.transparent,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  opsi,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF6E7C7C),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),

                    const SizedBox(height: 40),
                  ],

                  const SizedBox(height: 20),

                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Hasil(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 130,
                          vertical: 18,
                        ),
                        decoration: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          "Skrining",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 50),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
