import 'package:app_note/Views/widget/custmo_app_bar.dart';
import 'package:flutter/material.dart';

class editNoteViewbody extends StatelessWidget {
  const editNoteViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          customAppBar(text: 'edit')
        ],
      ),
    );
  }
}
