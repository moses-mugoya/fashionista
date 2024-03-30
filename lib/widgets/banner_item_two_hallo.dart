import 'package:fashion_gemstore/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BannerItem extends StatelessWidget {
  final double containerHeight;
  final String smallerText;
  final List<String> biggerTexts;
  final FontWeight? fontBiggerTexts;
  final FontWeight? fontSmallerTexts;
  final double? fontSizeSmallerText;
  final double? fontSizeBiggerText;
  final Color colorSmallerText;
  final Color colorBiggerText;
  final String bannerImage;

  const BannerItem(
      {super.key,
      required this.containerHeight,
      required this.smallerText,
      required this.biggerTexts,
      this.fontBiggerTexts,
      this.fontSmallerTexts,
      this.fontSizeSmallerText,
      this.fontSizeBiggerText,
      required this.bannerImage,
      required this.colorSmallerText,
      required this.colorBiggerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8),
      height: containerHeight,
      decoration: BoxDecoration(color: AppConstants.bannerBackgroundColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 27),
            child: Column(
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
                      smallerText,
                      style: TextStyle(
                          fontFamily: 'ProductSans',
                          color: colorSmallerText,
                          fontSize: fontSizeSmallerText),
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
                            fontSize: fontSizeBiggerText,
                            color: colorBiggerText,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
          const SizedBox(width: 25,),
          Stack(
            children: [
              Container(
                height: 132,
                width: 132,
                decoration: BoxDecoration(
                    color: AppConstants.bannerInnerHalloColor,
                    borderRadius: BorderRadius.circular(116)),
                child: Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: AppConstants.bannerOuterHalloColor,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ),

              Positioned(
                bottom: 0,
                right: -50,
                child: Image.asset(
                  bannerImage,
                  height: 148,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
