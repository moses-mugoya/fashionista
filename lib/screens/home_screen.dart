import 'package:fashion_gemstore/utils/carousel_images.dart';
import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/banner_one.dart';
import 'package:fashion_gemstore/widgets/banner_three.dart';
import 'package:fashion_gemstore/widgets/banner_two.dart';
import 'package:fashion_gemstore/widgets/carousel.dart';
import 'package:fashion_gemstore/widgets/category_item.dart';
import 'package:fashion_gemstore/widgets/featured_item.dart';
import 'package:fashion_gemstore/widgets/header_text.dart';
import 'package:fashion_gemstore/widgets/row_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _imageIndex = 0;

  void _previousImage() {
    setState(() {
      _imageIndex = _imageIndex > 0 ? _imageIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      _imageIndex = _imageIndex < carouselImages.length - 1
          ? _imageIndex + 1
          : _imageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          'assets/images/menu.svg',
                          height: 20,
                          width: 20,
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
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoryItem(
                          isActive: true,
                          title: 'Women',
                          svgPath: 'assets/images/female.svg',
                        ),
                        CategoryItem(
                          isActive: false,
                          title: 'Men',
                          svgPath: 'assets/images/male.svg',
                        ),
                        CategoryItem(
                          isActive: false,
                          title: 'Accessories',
                          svgPath: 'assets/images/accessory.svg',
                        ),
                        CategoryItem(
                          isActive: false,
                          title: 'Beauty',
                          svgPath: 'assets/images/beauty.svg',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Carousel(imageIndex: _imageIndex),
                    const SizedBox(
                      height: 20,
                    ),
                    const RowHeader(
                      biggerText: 'Featured Products',
                      smallerText: 'Show all',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 227,
                child: ListView(
                  padding: const EdgeInsets.only(left: 30),
                  scrollDirection: Axis.horizontal,
                  children: [
                    const FeaturedItem(
                      imagePath: 'assets/images/featured1.jpeg',
                      title: 'Turtleneck Sweater',
                      price: 39.99,
                      alignment: Alignment(-0.5, 0),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    const FeaturedItem(
                      imagePath: 'assets/images/featured2.png',
                      title: 'Long Sleeve Dress',
                      price: 45.00,
                      alignment: Alignment(0.5, 0),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    FeaturedItem(
                      imagePath: 'assets/images/featured3.png',
                      title: 'Sportwear Set',
                      price: 80.00,
                      backgroundColor: AppConstants.featuredBackColor,
                      alignment: const Alignment(0, 0),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const BannerOne(),
              const Padding(
                padding: EdgeInsets.all(30),
                child: RowHeader(
                  biggerText: 'Recommended',
                  smallerText: 'Show all',
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(30),
                child: RowHeader(
                  biggerText: 'Top Collection',
                  smallerText: 'Show all',
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: BannerTwo(),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: BannerThree(),
              ),
              const SizedBox(
                height: 25,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
