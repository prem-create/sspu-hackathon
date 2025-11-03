import 'package:flutter/material.dart';

extension IntExtension on int? {
  int validate({int value = 0}) {
    return this ?? value;
  }

  Widget get ht => SizedBox(height: this?.toDouble());

  Widget get wt => SizedBox(width: this?.toDouble());
}
