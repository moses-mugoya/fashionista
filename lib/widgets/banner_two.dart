import 'package:fashion_gemstore/utils/constants.dart';
import 'package:flutter/material.dart';

class BannerTwo extends StatelessWidget {
  const BannerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    const String smallText = 'Sale up to 40%';
    const List<String> biggerTexts = ['FOR SLIM', '& BEAUTY'];

    return Container(
      height: 141,
      decoration: BoxDecoration(
        color: AppConstants.bannerBackgroundColor,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 2,
                      height: 20,
                      color: AppConstants.bannerTextColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        smallText,
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            color: AppConstants.bannerTextColor,
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: biggerTexts
                      .map(
                        (text) => Text(
                          text,
                          style: TextStyle(
                            fontFamily: "ProductSans",
                            fontSize: 20,
                            color: AppConstants.bannerTextColor,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          Stack(
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: AppConstants.bannerOuterHalloColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              Positioned(
                top:
                    -45, // Adjust top position to center the image on the black circle
                left:
                    -18.5, // Adjust left position to center the image on the black circle
                child: Container(
                  height: 190,
                  width: 139,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/banner2.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
