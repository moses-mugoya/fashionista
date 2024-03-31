import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainAppBar extends StatelessWidget {
  final String title;
  const MainAppBar({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/images/menu.svg',
          height: 20,
          width: 20,
        ),
        HeaderText(
          text: title,
          textColor: AppConstants.blackColor,
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
        Stack(
          children: [
            const Icon(
              Icons.notifications_none,
              size: 30,
            ),
            Positioned(
              top: 7,
              left: 16,
              child: Container(
                width: 8, // Adjust size as needed
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppConstants.notificationDotColor,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
