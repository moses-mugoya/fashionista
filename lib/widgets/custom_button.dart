import 'package:fashion_gemstore/widgets/header_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color textColor;
  final String text;
  final Color backgroundColor;
  final VoidCallback? onPressed;
  final Color borderColor;

  const CustomButton({
    super.key,
    required this.textColor,
    required this.text,
    required this.backgroundColor,
    this.onPressed, required this.borderColor,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
        height: 35,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor, width: 1.5),
        ),
        child: Center(
          child: HeaderText(
            text: text,
            textColor: textColor,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
