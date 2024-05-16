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
            color: AppConstants.whiteColor,
            elevation: 2, // Set the elevation value as needed
            borderRadius: BorderRadius.circular(17),
            child: Container(
              height: 34,
              width: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
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
                child: Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 18,
                        color: AppConstants.blackColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            : Text(
                title,
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 18,
                  color: AppConstants.blackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ],
    );
  }
}
