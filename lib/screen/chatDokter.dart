import 'package:anemaware/screen/isiChat.dart';
import 'package:flutter/material.dart';

class Chatdokter extends StatelessWidget {
  const Chatdokter({super.key});

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFFD67B89);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: primary, size: 22),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: const Text(
          "Message",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        centerTitle: false,
      ),

      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Isichat()),
                );
              },
              borderRadius: BorderRadius.circular(15),

              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: primary, width: 1.5),
                ),
                padding: const EdgeInsets.all(20),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // PROFILE BOX
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: primary, width: 1.5),
                      ),
                      child: const Icon(
                        Icons.person_outline,
                        size: 35,
                        color: Color(0xFFD67B89),
                      ),
                    ),

                    const SizedBox(width: 15),

                    // INFO DOKTER
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr.",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Pesan",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}