import 'package:flutter/material.dart';

class icon extends StatelessWidget {
  const icon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 68, 63, 63),
          borderRadius: BorderRadius.circular(16)),
      child: const Center(
        child: Icon(
          Icons.search,
          size: 28,
        ),
      ),
    );
  }
}
