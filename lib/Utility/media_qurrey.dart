import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get scrWidth => MediaQuery.of(this).size.width;
  double get scrHeight => MediaQuery.of(this).size.height;
}