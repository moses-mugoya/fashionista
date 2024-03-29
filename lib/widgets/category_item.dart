import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:fashion_gemstore/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String svgPath;
  final bool isActive;

  const CategoryItem({
    super.key,
    required this.title,
    required this.svgPath,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isActive //if active background is black and icon color is white
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
                        color: AppConstants.blackColor),
                    child: FractionallySizedBox(
                      heightFactor: 20 /
                          36, // Calculate the fraction of the desired height
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
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(
              fontFamily: 'ProductSans',
              fontSize: 11,
              fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
