import 'package:app_note/Views/note_view.dart';
import 'package:app_note/constant.dart';
import 'package:app_note/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotebox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const notesApp());
}

class notesApp extends StatelessWidget {
  const notesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: noteView(),
    );
  }
}
