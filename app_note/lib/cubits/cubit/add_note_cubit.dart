import 'package:app_note/constant.dart';
import 'package:app_note/cubits/cubit/add_note_state.dart';
import 'package:app_note/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

class addNotescubit extends Cubit<addNotesState> {
  addNotescubit() : super(AddNotesInitial());
  Color? color = Colors.yellow;
  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNotesLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotebox);
      emit(AddNotesSuccess());
      await notesbox.add(note);
    } catch (e) {
      emit(AddNotesFaluir(e.toString()));
    }
  }
}
