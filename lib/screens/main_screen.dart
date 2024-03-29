import 'package:fashion_gemstore/utils/bottom_nav_screens.dart';
import 'package:fashion_gemstore/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  //update the current index on tap
  void updateCurrentIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavScreens[_currentIndex],
      bottomNavigationBar: Material(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        elevation: 12,
        shadowColor: AppConstants.blackColor.withOpacity(1),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: AppConstants.blackColor.withOpacity(0.15),
            ),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              type: BottomNavigationBarType.fixed,
              onTap: updateCurrentIndex,
              selectedItemColor: AppConstants.blackColor,
              unselectedItemColor: AppConstants.fadedIconColor,
              items: [
                BottomNavigationBarItem(
                  label: "",
                  icon: SvgPicture.asset(
                    'assets/images/home.svg',
                    colorFilter: _currentIndex ==
                            0 //change the color of the svg icons based on the current index
                        ? ColorFilter.mode(
                            AppConstants.blackColor, BlendMode.srcIn)
                        : ColorFilter.mode(
                            AppConstants.fadedIconColor, BlendMode.srcIn),
                  ),
                ),
                BottomNavigationBarItem(
                    label: "",
                    icon: SvgPicture.asset(
                      'assets/images/search.svg',
                      colorFilter: _currentIndex ==
                              1 //change the color of the svg icons based on the current index
                          ? ColorFilter.mode(
                              AppConstants.blackColor, BlendMode.srcIn)
                          : ColorFilter.mode(
                              AppConstants.fadedIconColor, BlendMode.srcIn),
                    )),
                BottomNavigationBarItem(
                  label: "",
                  icon: SvgPicture.asset(
                    'assets/images/order.svg',
                    colorFilter: _currentIndex ==
                            2 //change the color of the svg icons based on the current index
                        ? ColorFilter.mode(
                            AppConstants.blackColor, BlendMode.srcIn)
                        : ColorFilter.mode(
                            AppConstants.fadedIconColor, BlendMode.srcIn),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: SvgPicture.asset(
                    'assets/images/profile.svg',
                    colorFilter: _currentIndex ==
                            3 //change the color of the svg icons based on the current index
                        ? ColorFilter.mode(
                            AppConstants.blackColor, BlendMode.srcIn)
                        : ColorFilter.mode(
                            AppConstants.fadedIconColor, BlendMode.srcIn),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
