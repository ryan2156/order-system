import 'package:flutter/material.dart';

import 'package:ordersystem/screens/components/appbar.dart';
import 'package:ordersystem/screens/components/orderitem.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();

}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: const TopBar(
        titleName: '訂單記錄',
      ),

      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 32.0,
            horizontal: 24.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              OrderItem(),
              OrderItem(),
            ],
          ),
        ),
      ),
    );
  }

}