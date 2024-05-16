import 'package:fashion_gemstore/screens/main_screen.dart';
import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/child_app_bar.dart';
import 'package:fashion_gemstore/widgets/custom_button.dart';
import 'package:fashion_gemstore/widgets/header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen(
      {super.key,
      required this.orderNumber,
      required this.trackingNumber,
      required this.subTotal});

  final int orderNumber;
  final String trackingNumber;
  final double subTotal;

  @override
  Widget build(BuildContext context) {
    void onBackTap() {
     Navigator.pop(context);
    }

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              ChildAppBar(
                onTapped: onBackTap,
                title: 'Order #$orderNumber',
                centerTitle: true,
              ),
              const SizedBox(
                height: 45,
              ),
              Container(
                padding: const EdgeInsets.all(
                  10,
                ),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppConstants.darkGreyColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HeaderText(
                          text: 'Your order is delivered',
                          textColor: AppConstants.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        HeaderText(
                          text: 'Rate product to get 5 points for collect.',
                          textColor: AppConstants.whiteColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        )
                      ],
                    ),
                    SvgPicture.asset('assets/images/delivered.svg')
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Card(
                color: AppConstants.whiteColor,
                elevation: 2,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 120,
                  decoration: BoxDecoration(color: AppConstants.whiteColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HeaderText(
                              text: 'Order number',
                              textColor: AppConstants.bannerTextColor,
                              fontSize: 14),
                          HeaderText(
                              text: '#$orderNumber',
                              textColor: AppConstants.cardBlackColor,
                              fontSize: 14)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HeaderText(
                              text: 'Tracking number',
                              textColor: AppConstants.bannerTextColor,
                              fontSize: 14),
                          HeaderText(
                              text: trackingNumber,
                              textColor: AppConstants.cardBlackColor,
                              fontSize: 14)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HeaderText(
                              text: 'Delivery Address',
                              textColor: AppConstants.bannerTextColor,
                              fontSize: 14),
                          HeaderText(
                              text: 'SBI Building, Software Park',
                              textColor: AppConstants.cardBlackColor,
                              fontSize: 14)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Card(
                color: AppConstants.whiteColor,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppConstants.whiteColor,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HeaderText(
                            text: 'Maxi Dress',
                            textColor: AppConstants.bannerDarkTextColor,
                            fontSize: 14,
                          ),
                          Row(
                            children: [
                              HeaderText(
                                text: 'x1',
                                textColor: AppConstants.bannerDarkTextColor,
                                fontSize: 14,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              HeaderText(
                                text: '\$68.00',
                                textColor: AppConstants.bannerDarkTextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HeaderText(
                            text: 'Linen Dress',
                            textColor: AppConstants.bannerDarkTextColor,
                            fontSize: 14,
                          ),
                          Row(
                            children: [
                              HeaderText(
                                text: 'x1',
                                textColor: AppConstants.bannerDarkTextColor,
                                fontSize: 14,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              HeaderText(
                                text: '\$52.00',
                                textColor: AppConstants.bannerDarkTextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HeaderText(
                            text: 'Sub Total',
                            textColor: AppConstants.bannerDarkTextColor,
                            fontSize: 14,
                          ),
                          HeaderText(
                            text: '\$120.00',
                            textColor: AppConstants.bannerDarkTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HeaderText(
                            text: 'Shipping',
                            textColor: AppConstants.bannerDarkTextColor,
                            fontSize: 14,
                          ),
                          HeaderText(
                            text: '\$0.00',
                            textColor: AppConstants.bannerDarkTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1.5,
                        decoration: BoxDecoration(
                          color: AppConstants.unlikedColor,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HeaderText(
                            text: 'Total',
                            textColor: AppConstants.bannerDarkTextColor,
                            fontSize: 14,
                          ),
                          HeaderText(
                            text: '\$120.00',
                            textColor: AppConstants.bannerDarkTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    borderColor: AppConstants.bannerTextColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainScreen(),
                        ),
                      );
                    },
                    textColor: AppConstants.bannerTextColor,
                    text: 'Return home',
                    backgroundColor: AppConstants.whiteColor,
                  ),
                  CustomButton(textColor: AppConstants.whiteColor, text: 'Rate', backgroundColor: AppConstants.darkColor, borderColor: AppConstants.darkColor,)
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
