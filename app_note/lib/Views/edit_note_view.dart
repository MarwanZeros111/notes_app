import 'package:app_note/Views/widget/edit_note_view_body.dart';
import 'package:app_note/models/note_model.dart';
import 'package:flutter/material.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});

  @override
  final NoteModel note;
  Widget build(BuildContext context) {
    return Scaffold(
      body: editNoteViewbody(
        note: note,
      ),
    );
  }
}
