import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/header_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/menu.png',
              height: 17,
              width: 18,
            ),
            HeaderText(
                text: 'GemStore',
                textColor: AppConstants.blackColor,
                fontSize: 25,
                fontWeight: FontWeight.w700),
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
        ),
      )),
    );
  }
}
