import 'package:flutter/material.dart';
import 'package:sspu_hackathon/utils/text_inter_family.dart';

class MyElevatedButton extends StatelessWidget {
  final String text;
  final double width;
  final Color buttonColor, textColor;
  final Function()? onPressed;

  const MyElevatedButton({
    super.key,
    required this.text,
    this.width = double.infinity,
    this.buttonColor = const Color.fromARGB(255, 2, 8, 61),
    this.textColor = Colors.white,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        onPressed: onPressed?? (){},
        child: TextInterFamily(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          text: text,
          textHeight: 1.5,
          color: textColor,
        ),
      ),
    );
  }
}