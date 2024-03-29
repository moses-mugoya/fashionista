import 'package:flutter/material.dart';

class WelcomeCustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  

  const WelcomeCustomText({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.w700,
    required this.color,
    required this.fontSize
   
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontFamily: 'ProductSans',
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      child: Text(text),
    );
  }
}