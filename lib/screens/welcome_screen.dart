import 'package:fashion_gemstore/screens/main_screen.dart';
import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/welcome.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            color: AppConstants.blackColor.withOpacity(0.5),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            top: 528,
            left: 0,
            right: 0,
            child: Column(
              children: [
                WelcomeCustomText(
                    text: 'Welcome to GemStore!',
                    color: AppConstants.whiteColor,
                    fontSize: 25),
                const SizedBox(
                  height: 13,
                ),
                WelcomeCustomText(
                    text: 'The home for a fashionista',
                    color: AppConstants.whiteColor,
                    fontSize: 16)
              ],
            ),
          ),
          Positioned(
            top: 659,
            left: (MediaQuery.of(context).size.width - 193) / 2,
            child: SizedBox(
              width: 193,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScreen()));
                },
                child: Container(
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        29.5), // Adjust border radius as needed
                    border: Border.all(
                      color: AppConstants.whiteColor, // Specify border color
                      width: 1.18, // Specify border width
                    ),
                    color: Colors.grey.shade700,
                  ),
                  child: Center(
                    child: WelcomeCustomText(
                      text: 'Get Started',
                      color: AppConstants.whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
