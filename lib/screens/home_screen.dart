import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/banner_four.dart';
import 'package:fashion_gemstore/widgets/banner_one.dart';
import 'package:fashion_gemstore/widgets/banner_three.dart';
import 'package:fashion_gemstore/widgets/banner_two.dart';
import 'package:fashion_gemstore/widgets/carousel.dart';
import 'package:fashion_gemstore/widgets/featured_item.dart';
import 'package:fashion_gemstore/widgets/home_tab_item.dart';
import 'package:fashion_gemstore/widgets/main_app_bar.dart';
import 'package:fashion_gemstore/widgets/recommended_item.dart';
import 'package:fashion_gemstore/widgets/row_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabChange);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    int currentIndex = _tabController.index;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Column(
                children: [
                  //A resuable main appbar
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: MainAppBar(
                      title: 'GemStore',
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  //Categories section
                  TabBar(
                    controller: _tabController,
                    labelColor: AppConstants.categorySelectedColor,
                    unselectedLabelColor:
                        AppConstants.categoryUnSelectedIconColor,
                    indicatorColor: AppConstants.transparentColor,
                    dividerColor: AppConstants.transparentColor,
                    labelStyle: const TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                    ),
                    tabs: [
                      HomeTabItem(
                        isActive: currentIndex == 0,
                        svgPath: 'assets/images/female.svg',
                        title: 'Women',
                      ),
                      HomeTabItem(
                        isActive: currentIndex == 1,
                        svgPath: 'assets/images/male.svg',
                        title: 'Men',
                      ),
                      HomeTabItem(
                        isActive: currentIndex == 2,
                        svgPath: 'assets/images/accessory.svg',
                        title: 'Accessories',
                      ),
                      HomeTabItem(
                        isActive: currentIndex == 3,
                        svgPath: 'assets/images/beauty.svg',
                        title: 'Beauty',
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(controller: _tabController, children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 317),
                    child: ListView(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        //Carousel section
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          child: Carousel(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 30),
                          child: RowHeader(
                            biggerText: 'Featured Products',
                            smallerText: 'Show all',
                          ),
                        ),
                        //Featured section
                        SizedBox(
                          height: 227,
                          child: ListView(
                            padding: const EdgeInsets.only(left: 30),
                            scrollDirection: Axis.horizontal,
                            children: [
                              FeaturedItem(
                                imagePath: 'assets/images/featured1.jpeg',
                                title: 'Turtleneck Sweater',
                                price: 39.99,
                                alignment: const Alignment(-0.5, 0),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              FeaturedItem(
                                imagePath: 'assets/images/featured2.png',
                                title: 'Long Sleeve Dress',
                                price: 45.00,
                                alignment: const Alignment(0.5, 0),
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
                        //First Banner
                        const BannerOne(),
                        const Padding(
                          padding: EdgeInsets.all(30),
                          child: RowHeader(
                            biggerText: 'Recommended',
                            smallerText: 'Show all',
                          ),
                        ),
                        //Recommended section
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: SizedBox(
                            height: 66,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                RecommendedItem(
                                  imagePath: 'assets/images/recom1.png',
                                  title: 'White Fashion Hoodie',
                                  price: 29.00,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                RecommendedItem(
                                  imagePath: 'assets/images/recom2.png',
                                  title: 'Cotton T-shirt',
                                  price: 30.00,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(30),
                          child: RowHeader(
                            biggerText: 'Top Collection',
                            smallerText: 'Show all',
                          ),
                        ),
                        //Second banner
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: BannerTwo(),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        //Third Banner
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: BannerThree(),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        //Fourth
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          child: BannerFourItem(),
                        )
                      ],
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Men Screen',
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Accessories Screen',
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Beauty Screen',
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
