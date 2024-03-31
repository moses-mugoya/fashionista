import 'package:fashion_gemstore/utils/carousel_images.dart';
import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/carousel_selected_image.dart';
import 'package:fashion_gemstore/widgets/header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Carousel extends StatefulWidget {
  const Carousel({
    super.key,
  });

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 209,
      child: PageView.builder(
        itemCount: carouselImages.length,
        onPageChanged: (int page) {
          setState(() {
            currentIndex = page;
          });
        },
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                height: 209,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(
                      carouselImages[currentIndex],
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
                    imageIndex: currentIndex),
              ),
            ],
          );
        },
      ),
    );
  }
}
