import 'package:flutter/material.dart';

class TextInterFamily extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double textHeight;
  final Color? color;
  const TextInterFamily({
    super.key,
    required this.fontSize,
    required this.fontWeight,
    required this.text,
    required this.textHeight,
    this.color = Colors.black, 
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'inter',
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        decoration: TextDecoration.none,
        height: textHeight
      ),
    );
  }
}