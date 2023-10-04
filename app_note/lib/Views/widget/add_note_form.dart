import 'package:app_note/Views/widget/custom_bottom.dart';
import 'package:app_note/Views/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class addNote extends StatefulWidget {
  const addNote({
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
              custombottom(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
                title: 'Save',
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
