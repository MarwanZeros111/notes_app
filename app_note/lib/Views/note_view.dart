import 'package:app_note/Views/widget/note_view_body.dart';
import 'package:flutter/material.dart';

class noteView extends StatelessWidget {
  const noteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: noteViewBody(),
    );
  }
}
