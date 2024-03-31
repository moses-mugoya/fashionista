import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int rating;
  final double starSize;
  final Color filledColor;
  final Color emptyColor;

  const StarRating({super.key, 
    required this.rating,
    this.starSize = 16.0,
    this.filledColor = Colors.green,
    this.emptyColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < rating) {
          return Icon(
            Icons.star,
            size: starSize,
            color: filledColor,
          );
        } else {
          return Icon(
            Icons.star_border,
            size: starSize,
            color: emptyColor,
          );
        }
      }),
    );
  }
}
