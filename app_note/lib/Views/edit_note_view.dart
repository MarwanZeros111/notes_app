import 'package:app_note/Views/widget/edit_note_view_body.dart';
import 'package:flutter/material.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: editNoteViewbody(),
    );
  }
}