// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight? fontWeight;

  const HeaderText({
    super.key,
    required this.text,
    required this.textColor,
    required this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'ProductSans',
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
