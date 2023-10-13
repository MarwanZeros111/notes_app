import 'package:app_note/Views/widget/custmo_app_bar.dart';
import 'package:app_note/Views/widget/custom_text_field.dart';
import 'package:app_note/cubits/notes_cubit/notes_cubit.dart';
import 'package:app_note/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class editNoteViewbody extends StatefulWidget {
  const editNoteViewbody({super.key, required this.note});

  @override
  final NoteModel note;

  @override
  State<editNoteViewbody> createState() => _editNoteViewbodyState();
}

class _editNoteViewbodyState extends State<editNoteViewbody> {
  String? title, subtitle;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            customAppBar(
              onpressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = subtitle ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchallNotes();
                Navigator.pop(context);
              },
              text: 'Edit Note',
              ico: Icons.check,
            ),
            SizedBox(
              height: 50,
            ),
            customtext(
                onchange: (data) {
                  title = data;
                },
                hint: widget.note.title),
            SizedBox(
              height: 20,
            ),
            customtext(
              onchange: (data) {
                subtitle = data;
              },
              hint: widget.note.subtitle,
              maxlen: 7,
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
