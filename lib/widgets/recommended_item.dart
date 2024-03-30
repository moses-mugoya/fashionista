import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecommendedItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final double price;
  final String displayPrice;

  RecommendedItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
  })  : displayPrice = price.toStringAsFixed(2);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      width: 213,
      child: Row(
        children: [
          Container(
            height: 66, 
            width: 66, 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imagePath,),
                fit: BoxFit.cover,
                alignment: const Alignment(0, 1)
              ),
              
            ),
          ),
          const SizedBox(
              width: 10), 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '\$ $displayPrice',
                style: const TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
