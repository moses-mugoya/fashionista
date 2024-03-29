import 'package:flutter/material.dart';

class HexColor extends Color {
  // Constructor to parse hex color string
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }

  // Constructor to create a Color object from hex color string
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}