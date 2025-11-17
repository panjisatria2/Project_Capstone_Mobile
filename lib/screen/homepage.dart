import 'package:anemaware/screen/dashboard.dart';
import 'package:anemaware/screen/pilihInput.dart';
import 'package:anemaware/screen/profile.dart';
import 'package:flutter/material.dart';

import 'chat.dart';

class HomePage extends StatefulWidget {
  final int initialIndex;

  const HomePage({super.key, this.initialIndex = 0});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _currentIndex;

  final List<Widget> _pages = [
    Dashboard(),
    Pilihinput(),
    Chat(),
    Profile()
  ];

  final List<String> _iconPaths = [
    'assets/navigasi/hugeicons_home-07.png',
    'assets/navigasi/hugeicons_ai-magic.png',
    'assets/navigasi/si_ai-chat-line.png',
    'assets/navigasi/solar_user-outline.png',
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex; // ← ambil dari parameter
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFD67B89),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(_iconPaths[0], 0),
            _buildNavItem(_iconPaths[1], 1),
            _buildNavItem(_iconPaths[2], 2),
            _buildNavItem(_iconPaths[3], 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String iconPath, int index) {
    bool isActive = _currentIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isActive ? const Color(0xFFC2185B) : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          iconPath,
          width: 28,
          height: 28,
          color: Colors.white,
        ),
      ),
    );
  }
}
