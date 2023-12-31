import 'package:app_note/constant.dart';
import 'package:app_note/cubits/notes_cubit/notes_state.dart';
import 'package:app_note/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchallNotes() async {
    var notesbox = Hive.box<NoteModel>(kNotebox);
    notes = notesbox.values.toList();
    emit(NotesSuccess());
  }
}
