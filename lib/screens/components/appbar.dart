import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  const appBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        '客戶訂單系統',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
      centerTitle: false,
      backgroundColor: Colors.green,
      titleSpacing: 30,
      toolbarHeight: 60,
    );
  }

}