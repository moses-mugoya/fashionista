import 'package:fashion_gemstore/utils/constants.dart';
import 'package:flutter/material.dart';

class BannerOne extends StatelessWidget {
  const BannerOne({super.key});

  @override
  Widget build(BuildContext context) {
    const String smallText = 'NEW COLLECTION';
    const List<String> biggerTexts = ['HANG OUT', '& PARTY'];

    return Container(
      height: 158,
      decoration: BoxDecoration(color: AppConstants.bannerBackgroundColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 27),
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
                    Text(
                      smallText,
                      style: TextStyle(
                          fontFamily: 'ProductSans',
                          color: AppConstants.bannerTextColor,
                          fontSize: 12),
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
                            color: AppConstants.bannerDarkTextColor,
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
              Container(
                height: 132,
                width: 132,
                decoration: BoxDecoration(
                    color: AppConstants.bannerOuterHalloColor,
                    borderRadius: BorderRadius.circular(116)),
                child: Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: AppConstants.bannerInnerHalloColor,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ),
              Positioned(
                child: SizedBox(
                  height: 158,
                  width: 119,
                  child: Image.asset(
                    'assets/images/banner1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
