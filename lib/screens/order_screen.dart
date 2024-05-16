import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/main_app_bar.dart';
import 'package:fashion_gemstore/widgets/order_items_list.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 1);
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
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const MainAppBar(
                  title: 'My Orders',
                  fontWeight: FontWeight.w500,
                  fontSize: 21,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 30, 12, 30),
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: AppConstants.transparentColor,
                    dividerColor: AppConstants.transparentColor,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                    tabs: [
                      Tab(
                        child: Container(
                          width: 90,
                          height: 28,
                          decoration: BoxDecoration(
                            color: currentIndex == 0
                                ? AppConstants.tabBackgroundColor
                                : AppConstants.whiteColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Pending',
                              style: TextStyle(
                                fontFamily: 'ProductSans',
                                fontSize: 14,
                                color: currentIndex == 0
                                    ? AppConstants.whiteColor
                                    : AppConstants.blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 28,
                          decoration: BoxDecoration(
                            color: currentIndex == 1
                                ? AppConstants.tabBackgroundColor
                                : AppConstants.whiteColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Delivered',
                              style: TextStyle(
                                fontFamily: 'ProductSans',
                                fontSize: 14,
                                color: currentIndex == 1
                                    ? AppConstants.whiteColor
                                    : AppConstants.blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: 90,
                          height: 28,
                          decoration: BoxDecoration(
                            color: currentIndex == 2
                                ? AppConstants.tabBackgroundColor
                                : AppConstants.whiteColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Cancelled',
                              style: TextStyle(
                                fontFamily: 'ProductSans',
                                fontSize: 14,
                                color: currentIndex == 2
                                    ? AppConstants.whiteColor
                                    : AppConstants.blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      Center(child: Text('Pending')),
                      Padding(
                        padding: EdgeInsets.only(bottom: 260),
                        child: OrderItemsList(),
                      ),
                      Center(child: Text('Cancelled')),
                    ],
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


