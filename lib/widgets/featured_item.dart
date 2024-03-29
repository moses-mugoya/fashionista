// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/header_text.dart';
import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  final String imagePath;
  final Color? backgroundColor;
  final String title;
  final double price;
  final Alignment alignment;
  const FeaturedItem({
    super.key,
    required this.imagePath,
    this.backgroundColor,
    required this.title,
    required this.price, required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 172.0,
          width: 126.0,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
              alignment: alignment,
            ),
          ),
        ),
        HeaderText(
          text: title,
          textColor: AppConstants.blackColor,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
        HeaderText(
          text: '\$ $price',
          textColor: AppConstants.blackColor,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}
