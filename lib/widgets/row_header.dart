// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fashion_gemstore/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:fashion_gemstore/widgets/header_text.dart';

class RowHeader extends StatelessWidget {
  final String biggerText;
  final String smallerText;
  const RowHeader({
    super.key,
    required this.biggerText,
    required this.smallerText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HeaderText(
          text: biggerText,
          textColor: AppConstants.blackColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        HeaderText(
          text: smallerText,
          textColor: AppConstants.mediumFontColor,
          fontSize: 14,
        ),
      ],
    );
  }
}
