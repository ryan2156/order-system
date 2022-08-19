import 'package:flutter/material.dart';

import 'package:ordersystem/screens/components/clock.dart';
import 'package:ordersystem/screens/orderpage.dart';
import 'package:ordersystem/screens/components/appbar.dart';


class Homepage extends StatefulWidget{
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomePageState();

}

class _HomePageState extends State<Homepage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: const TopBar(titleName: '首頁',),

      body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           const Clock(),
           ElevatedButton(
             onPressed: () { 
               Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OrderPage())
               );
             },
             style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all(Colors.green),
             ),
             child: const Text(
               '開始',
               style: TextStyle(
                 fontSize: 30,
                 color: Colors.white,

               ),
             ),
           ),
         ],
       ),
     )
    );
  }
}