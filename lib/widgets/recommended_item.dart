import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecommendedItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final double price;
  const RecommendedItem(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          
          height: 66,
          decoration: BoxDecoration(
            
            borderRadius: BorderRadius.circular(10),
        
           
          ),
          child: Image.asset(imagePath, fit: BoxFit.cover,),
        )
      ],
    );
  }
}
