import 'package:fashion_gemstore/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BannerFourItem extends StatelessWidget {
  const BannerFourItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      

      height: 194,
      child: Row(
        children: [
          Container(
            height: 194,
            width: MediaQuery.of(context).size.width / 2 - 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppConstants.bannerBackgroundColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Transform.scale(
                    scale: 1.7,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Transform.translate(
                        offset:
                            const Offset(-38.0, -12.0), // Adjust the offset as needed
                        child: Container(
                          width: 70, // Adjust the width as needed
                          height: 110,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/banner4.png'),
                              fit: BoxFit.cover,
                              alignment: Alignment
                                  .centerLeft, // Center the image horizontally
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'T-Shirts',
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 13,
                            color: AppConstants.bannerTextColor),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'The ',
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 17,
                            color: AppConstants.bannerDarkTextColor,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Office',
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 17,
                            color: AppConstants.bannerDarkTextColor,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Life',
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 17,
                            color: AppConstants.bannerDarkTextColor,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 10,),
          Container(
            height: 194,
            width: MediaQuery.of(context).size.width / 2 - 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppConstants.bannerBackgroundColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dresses',
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 13,
                            color: AppConstants.bannerTextColor),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Elegant',
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 17,
                            color: AppConstants.bannerDarkTextColor,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Designs',
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 17,
                            color: AppConstants.bannerDarkTextColor,
                            fontWeight: FontWeight.w300),
                      ),
                      
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Transform.translate(
                    offset:
                        const Offset(8.0, -15.0), // Adjust the offset as needed
                    child: Container(
                      width: 90, // Adjust the width as needed
                      height: 194,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/banner5.png'),
                          fit: BoxFit.cover,
                          alignment: Alignment
                              .centerLeft, // Center the image horizontally
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
