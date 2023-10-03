import 'package:app_note/Views/widget/custom_bottom.dart';
import 'package:app_note/Views/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class bottomsheet extends StatelessWidget {
  const bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 36,
            ),
            customtext(
              hint: 'Title',
            ),
            SizedBox(
              height: 15,
            ),
            customtext(
              hint: 'Content',
              maxlen: 6,
            ),
            SizedBox(
              height: 32,
            ),
            custombottom(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
