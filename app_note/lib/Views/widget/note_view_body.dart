import 'package:app_note/Views/edit_note_view.dart';
import 'package:app_note/Views/widget/custmo_app_bar.dart';
import 'package:app_note/Views/widget/notes_list_view.dart';
import 'package:flutter/material.dart';

class noteViewBody extends StatelessWidget {
  const noteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        children: [
          SizedBox(
            height: 25,
          ),
          customAppBar(
            text: 'Note',
            ico: Icons.search,
          ),
          Expanded(child: ListviewItem())
        ],
      ),
    );
  }
}
