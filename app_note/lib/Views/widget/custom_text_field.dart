import 'package:flutter/material.dart';

class customtext extends StatelessWidget {
  const customtext(
      {super.key, required this.hint, this.maxlen = 1, this.onsaved});

  @override
  final void Function(String?)? onsaved;
  final String hint;
  final int maxlen;
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (data) {
        if (data?.isEmpty ?? true) {
          return 'Faild is Requird';
        } else {
          return null;
        }
      },
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
