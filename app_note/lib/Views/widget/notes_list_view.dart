import 'package:app_note/Views/widget/custom_view_item.dart';
import 'package:flutter/material.dart';

class ListviewItem extends StatelessWidget {
  const ListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, i) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: notesitem(),
      );
    });
  }
}
