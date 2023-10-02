import 'package:flutter/material.dart';

class customtext extends StatelessWidget {
  const customtext({this.hint, this.maxlen, super.key});

  @override
  final String hint;
  final int maxlen;
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Title',
          hintStyle: TextStyle(color: Color(0xff62FCD7)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white))),
    );
  }
}
