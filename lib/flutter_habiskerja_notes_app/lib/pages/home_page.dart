import 'package:flutter/material.dart';
import 'package:flutter_habiskerja_notes_app/models/note.dart';
import 'package:flutter_habiskerja_notes_app/widgets/card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Note> notes = [
    Note(
      id: 1,
      title: 'Belajar Flutter',
      description: 'Mempelajari dasar-dasar Flutter dan Dart.',
      time: DateTime.now(),
    ),
    Note(
      id: 2,
      title: 'Proyek Aplikasi',
      description: 'Mengerjakan proyek aplikasi mobile dengan Flutter.',
      time: DateTime.now(),
    ),
    Note(
      id: 3,
      title: 'Debugging',
      description: 'Memperbaiki bug yang ditemukan di aplikasi.',
      time: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buku Catatan'),
        automaticallyImplyLeading: false,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return CardWidget(notes[index], index: index);
        },
        itemCount: notes.length,
      ),
    );
  }
}
