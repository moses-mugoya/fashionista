import 'package:fashion_gemstore/widgets/order_item.dart';
import 'package:flutter/material.dart';

class OrderItemsList extends StatelessWidget {
  const OrderItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List orderItems = [
      const OrderItem(
          orderNumber: 1514,
          trackingNumber: 'IK987362341',
          quantity: 2,
          orderDate: '13/05/2021',
          subTotal: 110),
      const OrderItem(
          orderNumber: 1679,
          trackingNumber: 'IK3873218890',
          quantity: 3,
          orderDate: '12/05/2021',
          subTotal: 450),
      const OrderItem(
          orderNumber: 1671,
          trackingNumber: 'IK237368881',
          quantity: 3,
          orderDate: '10/05/2021',
          subTotal: 400)
    ];

    return ListView.builder(
        itemCount: orderItems.length,
        itemBuilder: (context, index) {
          var orderItem = orderItems[index];
          return orderItem;
        });
  }
}
