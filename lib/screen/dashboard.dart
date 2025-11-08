import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFFD67B89);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: primary, width: 2),
                    ),
                    child: const Icon(Icons.person_outline,
                        size: 35, color: primary),
                  ),
                  const SizedBox(width: 15),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hallo, Welcome',
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                      SizedBox(height: 4),
                      Text('Username',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 50),

              // Judul "Postingan"
              Container(
                padding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                decoration: BoxDecoration(
                  color: primary.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Postingan',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),

              const SizedBox(height: 20),

              // Postingan Pertama
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: primary, width: 1.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text('Judul Postingan 1',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      const Text('Uploader 1',
                          style: TextStyle(
                              fontSize: 14, color: Colors.black54)),
                    ],
                  ),
                ),
              ),

              // Postingan Kedua
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: primary, width: 1.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text('Judul Postingan 2',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      const Text('Uploader 2',
                          style: TextStyle(
                              fontSize: 14, color: Colors.black54)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // Floating Action Button (Chatbot)
      floatingActionButton: FloatingActionButton(
        backgroundColor: primary,
        elevation: 4,
        onPressed: () {},
        child: ClipOval(
          child: Image.asset(
            'assets/navigasi/hugeicons_chat-bot.png',
            fit: BoxFit.cover,
            width: 50,
            height: 50,
          ),
        ),
      ),
    );
  }
}
