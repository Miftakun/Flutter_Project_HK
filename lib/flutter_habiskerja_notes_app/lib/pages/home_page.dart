import 'package:flutter/material.dart';
import 'package:flutter_habiskerja_notes_app/models/note.dart';
import 'package:flutter_habiskerja_notes_app/pages/form_page.dart';
import 'package:flutter_habiskerja_notes_app/utils/notes_database.dart';
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
    Note(
      id: 4,
      title: 'Release Aplikasi',
      description: 'Mempersiapkan rilis aplikasi ke Play Store.',
      time: DateTime.now(),
    ),
  ];

  bool isLoading = false;

  Future refreshNotes() async {
    setState(() {
      isLoading = true;
    });
    notes = await NotesDatabase.instance.readAllNotes();
    setState(() {
      isLoading = false;
    });
    // Simulasi proses refresh data
  }

  @override
  void initState() {
    super.initState();
    refreshNotes();
  }

  @override
  void dispose() {
    NotesDatabase.instance.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buku Catatan'),
        automaticallyImplyLeading: false,
      ),
      body:
          isLoading
              ? const Center(child: CircularProgressIndicator())
              : Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
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
              ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                // Ganti dengan halaman form yang sesuai
                return const FormPage();
              },
            ),
          );
          refreshNotes();
          // Navigasi ke halaman form untuk menambahkan catatan baru
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
