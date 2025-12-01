import 'package:anemaware/screen/isiChat.dart';
import 'package:flutter/material.dart';

class ListDokter extends StatelessWidget {
  const ListDokter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Daftar Dokter")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _dokterCard(
            context,
            img: "assets/navigasi/logo login.png",
            nama: "dr. Andika Putra",
            online: true,
          ),
          const SizedBox(height: 16),
          _dokterCard(
            context,
            img: "assets/navigasi/logo login.png",
            nama: "dr. Sinta Marlina",
            online: false,
          ),
        ],
      ),
    );
  }

  Widget _dokterCard(
      BuildContext context, {
        required String img,
        required String nama,
        required bool online,
      }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // FOTO
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              img,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 12),

          // NAMA DAN STATUS
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 12,
                      color: online ? Colors.green : Colors.grey,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      online ? "Online" : "Offline",
                      style: TextStyle(
                        fontSize: 13,
                        color: online ? Colors.green : Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          // BUTTON CHAT
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Isichat()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text("Chat"),
            ),
          )
        ],
      ),
    );
  }
}
