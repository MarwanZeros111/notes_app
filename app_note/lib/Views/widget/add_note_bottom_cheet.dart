import 'package:app_note/Views/widget/add_note_form.dart';
import 'package:app_note/cubits/cubit/add_note_cubit.dart';
import 'package:app_note/cubits/cubit/add_note_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class bottomsheet extends StatefulWidget {
  const bottomsheet({super.key});

  @override
  State<bottomsheet> createState() => _bottomsheetState();
}

class _bottomsheetState extends State<bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => addNotescubit(),
      child: BlocConsumer<addNotescubit, addNotesState>(
          listener: (context, state) {
        if (state is AddNotesFaluir) {
          print('Failed ${state.errMessage}');
        }
        if (state is AddNotesSuccess) {
          Navigator.pop(context);
        }
      }, builder: (context, state) {
        return AbsorbPointer(
            absorbing: state is AddNotesLoading ? true : false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(child: addNote()),
            ));
      }),
    );
  }
}
