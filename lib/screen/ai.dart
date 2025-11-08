import 'package:flutter/material.dart';

class Ai extends StatelessWidget {
  const Ai({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFFD67B89);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // Kotak upload
            Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor, width: 1.5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Icon(Icons.camera_alt_outlined,
                    color: Colors.grey, size: 50),
              ),
            ),

            const SizedBox(height: 16),

            // Tombol konjungtiva & kuku/nail (no action)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    disabledBackgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 10),
                  ),
                  child: const Text(
                    'Konjungtiva',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    disabledBackgroundColor: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 10),
                  ),
                  child: const Text(
                    'Kuku/Nail',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              'Pertanyaan',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            // Pertanyaan 1
            const Text(
              'Apakah sering merasa lemas atau pusing? (0 -10)',
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
            const SizedBox(height: 6),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFFFF8F8),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                  const BorderSide(color: primaryColor, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                  const BorderSide(color: primaryColor, width: 2),
                ),
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 14),
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Apakah wajah pucat atau sulit konsentrasi? (0 -10)',
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
            const SizedBox(height: 6),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFFFF8F8),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                  const BorderSide(color: primaryColor, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                  const BorderSide(color: primaryColor, width: 2),
                ),
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 14),
              ),
            ),

            const SizedBox(height: 16),

            // Pertanyaan 3
            const Text(
              'Apakah mengalami menstruasi lama atau darah sangat banyak? (ya/tidak)',
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
            const SizedBox(height: 6),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFFFF8F8),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                  const BorderSide(color: primaryColor, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:
                  const BorderSide(color: primaryColor, width: 2),
                ),
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 14),
              ),
            ),

            const SizedBox(height: 30),

            // Tombol Skrining (no action)
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFC2185B),
                disabledBackgroundColor: const Color(0xFFC2185B),
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              child: const Text(
                'Skrining',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
