// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fashion_gemstore/utils/constants.dart';
import 'package:flutter/material.dart';

class CarouselSelectedImage extends StatelessWidget {
  const CarouselSelectedImage({
    super.key,
    required this.numberOfDots,
    required this.imageIndex,
  });

  final int numberOfDots;
  final int imageIndex;

  Widget _inactiveImage() {
    return Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(
        height: 8.0,
        width: 8.0,
        decoration: BoxDecoration(
          color: AppConstants.whiteColor,
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    );
  }

  Widget _activeImage() {
    return Container(
      height: 16,
      width: 16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: AppConstants.whiteColor),
      ),
      child: Center(
        child: Container(
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == imageIndex ? _activeImage() : _inactiveImage());
    }
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}
