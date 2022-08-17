import 'package:flutter/material.dart';

import 'package:ordersystem/screens/components/clock.dart';
import 'package:ordersystem/screens/orderpage.dart';


class Homepage extends StatefulWidget{
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomePageState();

}

class _HomePageState extends State<Homepage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
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
      ),

     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Clock(),
           RaisedButton(
             onPressed: () { 
               Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OrderPage())
               );
             },
             color: Colors.green,
             child: Text('開始'),
           ),
         ],
       ),
     )
    );
  }
}