import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({Key? key}) : super(key: key);

  static const  orderTextSize = 21.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 24.0,
      ),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20.0),
      ),

      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: Text(
                    '林哲享',
                    style: TextStyle(fontSize: orderTextSize),
                  ),
                ),
                Text(
                  '截止日期：8/7',
                  style: TextStyle(fontSize: orderTextSize),
                ),
              ],
            ),
            const Text(
              '內容:',
              style: TextStyle(fontSize: orderTextSize),
            ),
            const Text(
              '地址:',
              style: TextStyle(fontSize: orderTextSize),
            ),
            const Text(
              '單位',
              style: TextStyle(fontSize: orderTextSize),
            ),
          ],
      ),

    );

  }

}