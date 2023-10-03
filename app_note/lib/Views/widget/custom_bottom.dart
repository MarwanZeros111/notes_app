import 'package:flutter/material.dart';

class custombottom extends StatelessWidget {
  const custombottom({super.key, required this.title});

  @override
  final String title;
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff62FCD7),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}