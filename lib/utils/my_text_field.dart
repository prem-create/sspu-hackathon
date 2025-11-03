import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hint;

  const MyTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hint: Text(hint),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xDEE1E6FF)),
        ),
      ),
    );
  }
}