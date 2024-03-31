import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/header_text.dart';
import 'package:fashion_gemstore/widgets/star_rating.dart';
import 'package:flutter/material.dart';

class DressItem extends StatelessWidget {
  final String imagePath;
  final bool liked;
  final String name;
  final double currentPrice;
  final double? initialPrice;
  final int rating;
  final int ratingsNumber;

  final String displayedCurrentPrice;
  final String displayedInitialPrice;
  DressItem({
    super.key,
    required this.imagePath,
    required this.liked,
    required this.name,
    required this.currentPrice,
    this.initialPrice,
    required this.rating,
    required this.ratingsNumber,
  })  : displayedCurrentPrice = currentPrice.toStringAsFixed(2),
        displayedInitialPrice =
            initialPrice != null ? initialPrice.toStringAsFixed(2) : '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Positioned(
              top: 4,
              left: 135,
              child: Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppConstants.whiteColor,
                ),
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite_rounded,
                      size: 14,
                      color: liked
                          ? AppConstants.likedColor
                          : AppConstants.unlikedColor,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        HeaderText(
          text: name,
          textColor: AppConstants.dressTextColor,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            HeaderText(
              text: '\$ $displayedCurrentPrice',
              textColor: AppConstants.dressTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(
              width: 5,
            ),
            initialPrice != null
                ? Text(
                    '\$ $displayedInitialPrice',
                    style: const TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.lineThrough),
                  )
                : Container(),
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          children: [
            StarRating(
              rating: rating,
              filledColor: AppConstants.filledStart,
              emptyColor: AppConstants.nonFilledStar,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '($ratingsNumber)',
              style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 10,
                  fontWeight: FontWeight.w200,
                  color: AppConstants.dressTextColor),
            )
          ],
        ),
      ],
    );
  }
}
