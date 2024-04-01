import 'package:fashion_gemstore/screens/order_detail_screen.dart';
import 'package:fashion_gemstore/utils/constants.dart';
import 'package:fashion_gemstore/widgets/custom_button.dart';
import 'package:fashion_gemstore/widgets/header_text.dart';
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final int orderNumber;
  final String trackingNumber;
  final int quantity;
  final String orderDate;
  final double subTotal;
  const OrderItem(
      {super.key,
      required this.orderNumber,
      required this.trackingNumber,
      required this.quantity,
      required this.orderDate,
      required this.subTotal});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: AppConstants.whiteColor,
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 220,
        decoration: BoxDecoration(
          color: AppConstants.whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeaderText(
                  text: 'Order #$orderNumber',
                  textColor: AppConstants.cardBlackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
                HeaderText(
                  text: orderDate,
                  textColor: AppConstants.bannerTextColor,
                  fontSize: 14,
                )
              ],
            ),
            Row(
              children: [
                HeaderText(
                  text: 'Tracking Number:',
                  textColor: AppConstants.bannerTextColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                const SizedBox(
                  width: 5,
                ),
                HeaderText(
                  text: trackingNumber,
                  textColor: AppConstants.blackColor,
                  fontSize: 14,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: RichText(
                    text: TextSpan(
                        text: "Quantity:",
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            color: AppConstants.bannerTextColor,
                            fontSize: 14),
                        children: [
                          TextSpan(
                            text: ' $quantity',
                            style: TextStyle(
                                color: AppConstants.cardBlackColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )
                        ]),
                  ),
                ),
                SizedBox(
                  child: RichText(
                    text: TextSpan(
                        text: "Subtotal:",
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            color: AppConstants.bannerTextColor,
                            fontSize: 14),
                        children: [
                          TextSpan(
                            text: ' \$ $subTotal',
                            style: TextStyle(
                                color: AppConstants.cardBlackColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )
                        ]),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeaderText(
                  text: 'DELIVERED',
                  textColor: AppConstants.greenTextColor,
                  fontSize: 14,
                ),
                CustomButton(
                  text: 'Details',
                  borderColor: AppConstants.darkGreyColor,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderDetailScreen(
                            orderNumber: orderNumber,
                            trackingNumber: trackingNumber,
                            subTotal: subTotal),
                      ),
                    );
                  },
                  textColor: AppConstants.cardBlackColor,
                  backgroundColor: AppConstants.whiteColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
