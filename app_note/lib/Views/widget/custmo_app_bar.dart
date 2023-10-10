import 'package:app_note/Views/widget/custom_icon.dart';
import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget {
  const customAppBar(
      {required this.text, super.key, required this.ico, this.onpressed});

  @override
  final void Function()? onpressed;
  final String text;
  final IconData ico;
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 30,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 30),
        ),
        Spacer(),
        icon(
          onpressed: onpressed,
          ico: ico,
        )
      ],
    );
  }
}
