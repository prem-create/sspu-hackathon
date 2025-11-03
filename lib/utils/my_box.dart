import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final Widget child;
  final double height, width;
  const MyBox({
    super.key,
    required this.child,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Container(
        width: width, //width of box
        margin: EdgeInsets.only(right: 16), // spacing between cards
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10),
          border: BoxBorder.all(color: Color(0xDEE1E6FF)),
        ),
        child: child,
      ),
    );
  }
}