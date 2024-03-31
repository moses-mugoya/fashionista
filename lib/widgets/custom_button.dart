import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/header_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color textColor;
  final String text;
  final Color backgroundColor;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.textColor,
    required this.text,
    required this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
        height: 35,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppConstants.darkGreyColor, width: 1.5),
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
