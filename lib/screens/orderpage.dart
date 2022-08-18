import 'package:flutter/material.dart';

import 'package:ordersystem/screens/components/appbar.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();

}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold(
      appBar: TopBar(
        titleName: 'sbc',
      ),
    );
  }

}