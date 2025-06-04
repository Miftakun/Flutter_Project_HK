// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_habiskerja_notes_app/models/note.dart';
import 'package:flutter_habiskerja_notes_app/utils/card_color.dart';

class CardWidget extends StatelessWidget {
  final int index;
  final Note note;
  const CardWidget(this.note, {super.key, required this.index});

  double getMinHeight(int index) {
    switch (index % 6) {
      case 0:
        return 150.0;
      case 1:
        return 200.0;
      case 2:
        return 250.0;
      case 3:
        return 300.0;
      case 4:
        return 350.0;
      case 5:
        return 400.0;
      default:
        return 150.0; // Default case
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = cardColors[index % cardColors.length];
    final minHeight = getMinHeight(index);
    return Card(
      color: color,
      child: Container(
        constraints: BoxConstraints(minHeight: minHeight),
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(note.description, style: const TextStyle(fontSize: 14.0)),
            const Spacer(),
            Text(
              'Last updated: ${note.time.toLocal()}',
              style: const TextStyle(fontSize: 12.0, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
