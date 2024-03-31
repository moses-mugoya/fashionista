import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/header_text.dart';
import 'package:fashion_gemstore/widgets/star_rating.dart';
import 'package:flutter/material.dart';

class DressItem extends StatelessWidget {
  const DressItem({super.key});

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
                image: const DecorationImage(
                  image: AssetImage('assets/images/dress1.png'),
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
                  borderRadius: BorderRadius.circular(25),
                  color: AppConstants.whiteColor,
                ),
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite_rounded,
                      size: 14.5,
                      color: AppConstants.likedColor,
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
          text: 'Linen Dress',
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
              text: '\$ 52.00',
              textColor: AppConstants.dressTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              '\$ 90.00',
              style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  decoration: TextDecoration.lineThrough),
            ),
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          children: [
            StarRating(
              rating: 3,
              filledColor: AppConstants.filledStart,
              emptyColor: AppConstants.nonFilledStar,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '(24)',
              style: TextStyle(
                fontFamily: 'ProductSans',
                fontSize: 10,
                fontWeight: FontWeight.w200,
                color: AppConstants.dressTextColor
              ),
            )
          ],
        ),
      ],
    );
  }
}
