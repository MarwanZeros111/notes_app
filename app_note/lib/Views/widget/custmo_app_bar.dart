import 'package:app_note/Views/widget/custom_icon.dart';
import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          'Notes',
          style: TextStyle(fontSize: 30),
        ),
        Spacer(),
        icon()
      ],
    );
  }
}
