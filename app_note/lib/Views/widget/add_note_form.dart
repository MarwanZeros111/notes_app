import 'package:app_note/Views/widget/custom_bottom.dart';
import 'package:app_note/Views/widget/custom_text_field.dart';
import 'package:app_note/cubits/cubit/add_note_cubit.dart';
import 'package:app_note/cubits/cubit/add_note_state.dart';
import 'package:app_note/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class addNote extends StatefulWidget {
  addNote({
    super.key,
  });

  @override
  State<addNote> createState() => _addNoteState();
}

class _addNoteState extends State<addNote> {
  @override
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: SingleChildScrollView(
        child: Form(
          key: formkey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              customtext(
                onsaved: (data) {
                  title = data;
                },
                hint: 'Title',
              ),
              SizedBox(
                height: 15,
              ),
              customtext(
                onsaved: (data) {
                  subtitle = data;
                },
                hint: 'Content',
                maxlen: 6,
              ),
              SizedBox(
                height: 32,
              ),
              BlocBuilder<addNotescubit, addNotesState>(
                  builder: (context, state) {
                return custombottom(
                  isLoading: state is AddNotesLoading ? true : false,
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      var currentDate = DateTime.now();
                      var formatedcurrent =
                          DateFormat.yMd().format(currentDate);
                      var noteModal = NoteModel(
                          title: title!,
                          subtitle: subtitle!,
                          date: formatedcurrent,
                          color: Colors.blue.value);
                      BlocProvider.of<addNotescubit>(context)
                          .addNote(noteModal);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  title: 'Add',
                );
              }),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
