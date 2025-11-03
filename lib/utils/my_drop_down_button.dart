import 'package:flutter/material.dart';

class MyDropDownButton extends StatelessWidget {
  final String hint;
  final List<String> items;
  const MyDropDownButton({super.key, required this.hint, required this.items});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        hint: Text(hint),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xDEE1E6FF)),
        ),
      ),
      items: items
          .map((e) => DropdownMenuItem(value: e, child: Text(e)))
          .toList(),
      onChanged: (value) {},
    );
  }
}