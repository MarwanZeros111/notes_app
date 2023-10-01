import 'package:app_note/Views/note_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const notesApp());
}

class notesApp extends StatelessWidget {
  const notesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: noteView(),
    );
  }
}
