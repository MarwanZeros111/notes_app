import 'package:flutter/material.dart';

@immutable
abstract class NotesState {}

class AddNotesInitial extends NotesState {}

class AddNotesLoading extends NotesState {}

class AddNotesSuccess extends NotesState {}

class AddNotesFaluir extends NotesState {
  final String errMessage;

  AddNotesFaluir(this.errMessage);
}
