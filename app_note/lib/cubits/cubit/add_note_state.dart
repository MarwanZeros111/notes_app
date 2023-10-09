import 'package:flutter/material.dart';

@immutable
abstract class addNotesState {}

class AddNotesInitial extends addNotesState {}

class AddNotesLoading extends addNotesState {}

class AddNotesSuccess extends addNotesState {}

class AddNotesFaluir extends addNotesState {
  final String errMessage;

  AddNotesFaluir(this.errMessage);
}
