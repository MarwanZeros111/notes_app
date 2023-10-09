import 'package:app_note/Views/widget/add_note_bottom_cheet.dart';
import 'package:app_note/Views/widget/note_view_body.dart';
import 'package:flutter/material.dart';

class noteView extends StatelessWidget {
  const noteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return bottomsheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: noteViewBody(),
    );
  }
}
