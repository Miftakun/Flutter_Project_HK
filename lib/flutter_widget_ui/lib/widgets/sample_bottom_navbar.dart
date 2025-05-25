import 'package:flutter/material.dart';

class SampleBottomNavigationBar extends StatefulWidget {
  const SampleBottomNavigationBar({super.key});

  @override
  State<SampleBottomNavigationBar> createState() =>
      _SampleBottomNavigationBarState();
}

class _SampleBottomNavigationBarState extends State<SampleBottomNavigationBar> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    // Tambahkan logika untuk navigasi ke halaman yang sesuai jika diperlukan
    // Misalnya, menggunakan Navigator.push() atau Navigator.pushNamed()
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Bottom Navigation Bar')),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple[50],
        iconSize: 30,
        showUnselectedLabels: false,
        selectedItemColor: Colors.deepPurple,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
            tooltip: 'Halaman Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search),
            label: 'Search',
            tooltip: 'Halaman Pencarian',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Profile',
            tooltip: 'Halaman Profil',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: 'Settings',
            tooltip: 'Halaman Pengaturan',
          ),
        ],
      ),
    );
  }
}
