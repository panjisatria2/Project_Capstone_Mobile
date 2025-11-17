import 'package:anemaware/screen/hasil.dart';
import 'package:flutter/material.dart';

class Pertanyaan extends StatefulWidget {
  const Pertanyaan({super.key});

  @override
  State<Pertanyaan> createState() => _PertanyaanState();
}

class _PertanyaanState extends State<Pertanyaan> {
  final Color primary = const Color(0xFFD63A63);

  // State per pertanyaan
  String? q1;
  String? q2;
  String? q3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
              const Text(
                "Seberapa sering kamu merasa lemas, lesu, atau pusing?",
                style: TextStyle(
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
                  GestureDetector(
                    onTap: () => setState(() => q1 = "Tidak pernah"),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 2),
                            borderRadius: BorderRadius.circular(4),
                            color: q1 == "Tidak pernah" ? primary : Colors.transparent,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text("Tidak pernah",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF6E7C7C))),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => q1 = "Terkadang"),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 2),
                            borderRadius: BorderRadius.circular(4),
                            color: q1 == "Terkadang" ? primary : Colors.transparent,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text("Terkadang",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF6E7C7C))),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => q1 = "Sering"),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 2),
                            borderRadius: BorderRadius.circular(4),
                            color: q1 == "Sering" ? primary : Colors.transparent,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text("Sering",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF6E7C7C))),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => q1 = "Hampir setiap hari"),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 2),
                            borderRadius: BorderRadius.circular(4),
                            color: q1 == "Hampir setiap hari"
                                ? primary
                                : Colors.transparent,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text("Hampir setiap hari",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF6E7C7C))),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),
              const Text(
                "Apakah kamu merasa wajahmu tampak pucat atau sulit berkonsentrasi?",
                style: TextStyle(
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
                  GestureDetector(
                    onTap: () => setState(() => q2 = "Tidak pernah"),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 2),
                            borderRadius: BorderRadius.circular(4),
                            color: q2 == "Tidak pernah" ? primary : Colors.transparent,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text("Tidak pernah",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF6E7C7C))),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => q2 = "Terkadang"),
                    child: Row(
                      children: [
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 2),
                            borderRadius: BorderRadius.circular(4),
                            color: q2 == "Terkadang" ? primary : Colors.transparent,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text("Terkadang",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF6E7C7C))),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => q2 = "Sering"),
                    child: Row(
                      children: [
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 2),
                            borderRadius: BorderRadius.circular(4),
                            color: q2 == "Sering" ? primary : Colors.transparent,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text("Sering",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF6E7C7C))),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () =>
                        setState(() => q2 = "Hampir setiap hari"),
                    child: Row(
                      children: [
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 2),
                            borderRadius: BorderRadius.circular(4),
                            color: q2 == "Hampir setiap hari"
                                ? primary
                                : Colors.transparent,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text("Hampir setiap hari",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF6E7C7C))),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),
              const Text(
                "Apakah kamu mengalami menstruasi lama (lebih dari 7 hari) atau darah yang sangat banyak?",
                style: TextStyle(
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
                  GestureDetector(
                    onTap: () => setState(() => q3 = "Tidak pernah"),
                    child: Row(
                      children: [
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 2),
                            borderRadius: BorderRadius.circular(4),
                            color: q3 == "Tidak pernah" ? primary : Colors.transparent,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text("Tidak pernah",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF6E7C7C))),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => q3 = "Terkadang"),
                    child: Row(
                      children: [
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 2),
                            borderRadius: BorderRadius.circular(4),
                            color: q3 == "Terkadang" ? primary : Colors.transparent,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text("Terkadang",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF6E7C7C))),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => q3 = "Sering"),
                    child: Row(
                      children: [
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 2),
                            borderRadius: BorderRadius.circular(4),
                            color: q3 == "Sering" ? primary : Colors.transparent,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text("Sering",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF6E7C7C))),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () =>
                        setState(() => q3 = "Hampir setiap hari"),
                    child: Row(
                      children: [
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 2),
                            borderRadius: BorderRadius.circular(4),
                            color: q3 == "Hampir setiap hari"
                                ? primary
                                : Colors.transparent,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text("Hampir setiap hari",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF6E7C7C))),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 50),

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
        ),
      ),
    );
  }
}
