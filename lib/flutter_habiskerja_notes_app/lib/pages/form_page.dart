// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_habiskerja_notes_app/models/note.dart';
import 'package:flutter_habiskerja_notes_app/utils/notes_database.dart';

class FormPage extends StatefulWidget {
  final Note? note;
  const FormPage({Key? key, this.note}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.note != null) {
      titleController.text = widget.note!.title;
      descriptionController.text = widget.note!.description;
    }
    super.initState();
  }

  Future updateNote() async {
    final note = widget.note!.copyWith(
      title: titleController.text,
      description: descriptionController.text,
      time: DateTime.now(),
    );
    await NotesDatabase.instance.updateNote(note);
    Navigator.of(context).pop();
    Navigator.pop(context, note);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Catatan "${note.title}" berhasil diperbarui')),
    );
  }

  Future addNote() async {
    final note = Note(
      title: titleController.text,
      description: descriptionController.text,
      time: DateTime.now(),
    );
    await NotesDatabase.instance.createNote(note);
    Navigator.pop(context, note);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Catatan "${note.title}" berhasil disimpan')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Page'),
        actions: [
          InkWell(
            onTap: () {
              if (widget.note != null) {
                updateNote();
              } else {
                addNote();
              }
            },
            child: const Icon(Icons.save),
          ),

          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListView(
          children: [
            TextFormField(
              controller: titleController,
              maxLines: 1,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Judul',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: descriptionController,
              maxLines: 16,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Catatan...',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
