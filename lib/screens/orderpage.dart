import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text(
          '訂單記錄',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.green,
        titleSpacing: 30,
        toolbarHeight: 60,
      ),
    );
  }

}