import 'package:app_note/Views/widget/custom_view_item.dart';
import 'package:app_note/cubits/notes_cubit/notes_cubit.dart';
import 'package:app_note/cubits/notes_cubit/notes_state.dart';
import 'package:app_note/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListviewItem extends StatelessWidget {
  const ListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(builder: (context, state) {
      List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: notesitem(note: notes[i]),
              );
            }),
      );
    });
  }
}
