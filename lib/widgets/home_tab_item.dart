import 'package:fashion_gemstore/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTabItem extends StatelessWidget {
  final bool isActive;
  final String svgPath;
  final String title;
  const HomeTabItem({super.key, required this.isActive, required this.svgPath, required this.title});
  

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 100,
      text: title,
      icon: isActive //if active background is black and icon color is white
          ? Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(width: 1, color: AppConstants.blackColor),
              ),
              child: Center(
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: AppConstants.categorySelectedColor),
                  child: FractionallySizedBox(
                    heightFactor:
                        20 / 36, // Calculate the fraction of the desired height
                    widthFactor: 20 / 36,
                    child: SvgPicture.asset(
                      svgPath,
                      colorFilter: ColorFilter.mode(
                          AppConstants.whiteColor, BlendMode.srcIn),
                    ),
                  ),
                ),
              ),
            )
          : Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: AppConstants.categoryUnSelectedColor),
              child: FractionallySizedBox(
                heightFactor:
                    20 / 36, // Calculate the fraction of the desired height
                widthFactor: 20 / 36,
                child: SvgPicture.asset(
                  svgPath,
                  height: 5,
                  colorFilter: ColorFilter.mode(
                      AppConstants.categoryUnSelectedIconColor,
                      BlendMode.srcIn),
                ),
              ),
            ),
    );
  }
}
