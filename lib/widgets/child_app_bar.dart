import 'package:fashion_gemstore/utils/constants.dart';
import 'package:flutter/material.dart';

class ChildAppBar extends StatelessWidget {
  final VoidCallback onTapped;
  final String title;
  final bool centerTitle;

  const ChildAppBar({
    super.key,
    required this.onTapped,
    required this.title,
    required this.centerTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTapped,
          child: Material(
            elevation: 3, // Set the elevation value as needed
            borderRadius: BorderRadius.circular(18),
            child: Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Center(
                // Center the icon horizontally and vertically
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 18,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        centerTitle
            ? Expanded(
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 16,
                      color: AppConstants.blackColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            : Text(
                title,
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 16,
                  color: AppConstants.blackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ],
    );
  }
}
