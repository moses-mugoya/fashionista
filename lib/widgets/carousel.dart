import 'package:fashion_gemstore/utils/carousel_images.dart';
import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/carousel_selected_image.dart';
import 'package:fashion_gemstore/widgets/header_text.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    super.key,
    required int imageIndex,
  }) : _imageIndex = imageIndex;

  final int _imageIndex;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 209,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(
                carouselImages[_imageIndex],
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 25,
          left: 220,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderText(
                text: 'Autumn',
                textColor: AppConstants.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              HeaderText(
                text: 'Collection',
                textColor: AppConstants.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              HeaderText(
                text: '2021',
                textColor: AppConstants.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ],
          ),
        ),
        Positioned(
          top: 182,
          left: 150,
          child: CarouselSelectedImage(
              numberOfDots: carouselImages.length,
              imageIndex: _imageIndex),
        ),
      ],
    );
  }
}
