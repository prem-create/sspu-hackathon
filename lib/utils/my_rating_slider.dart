import 'package:flutter/material.dart';
import 'package:sspu_hackathon/utils/text_inter_family.dart';

class MyRatingSlider extends StatefulWidget {
  final String text;
  final double min;
  final double max;
  final int divisions;
  final ValueChanged<double>? onChanged;

  const MyRatingSlider({
    super.key,
    required this.text,
    this.min = 0,
    this.max = 100,
    this.divisions = 100,
    this.onChanged,
  });

  @override
  State<MyRatingSlider> createState() => _MyRatingSliderState();
}

class _MyRatingSliderState extends State<MyRatingSlider> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInterFamily(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          text:
              '${widget.text} ${rating.toStringAsFixed(0)}', // cleaner output
          textHeight: 1,
        ),
        Slider(
          value: rating,
          min: widget.min,
          max: widget.max,
          divisions: widget.divisions,
          label: rating.toStringAsFixed(0),
          activeColor: Colors.indigo,
          inactiveColor: Colors.indigo.shade100,
          onChanged: (value) {
            setState(() {
              rating = value;
            });
            widget.onChanged?.call(value); // callback if needed
          },
        ),
      ],
    );
  }
}
