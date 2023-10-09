import 'package:app_note/Views/widget/custmo_app_bar.dart';
import 'package:app_note/Views/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class editNoteViewbody extends StatelessWidget {
  const editNoteViewbody({super.key});

  @override
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
              text: 'Edit Note',
              ico: Icons.check,
            ),
            SizedBox(
              height: 50,
            ),
            customtext(hint: 'Title'),
            SizedBox(
              height: 20,
            ),
            customtext(
              hint: 'content',
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
