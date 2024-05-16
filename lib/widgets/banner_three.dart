import 'package:fashion_gemstore/utils/constants.dart';
import 'package:flutter/material.dart';

class BannerThree extends StatelessWidget {
  const BannerThree({super.key});

  @override
  Widget build(BuildContext context) {
    const String smallText = 'Summer Collection 2021';
    const List<String> biggerTexts = ['Most sexy', '& fabulous', 'design'];

    return Container(
      height: 210,
      decoration: BoxDecoration(
        color: AppConstants.bannerBackgroundColor,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 30),
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
                            fontWeight: FontWeight.w500,
                            color: AppConstants.bannerDarkTextColor,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              // Container
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
              // Image overlapping the container
              Positioned(
                child: Container(
                  height: 210,
                  width: 139,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/banner3.png'),
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
