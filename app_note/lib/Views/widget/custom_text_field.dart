import 'package:flutter/material.dart';

class customtext extends StatelessWidget {
  const customtext({super.key, required this.hint, this.maxlen = 1});

  @override
  final String hint;
  final int maxlen;
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlen,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Color(0xff62FCD7)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white))),
    );
  }
}
