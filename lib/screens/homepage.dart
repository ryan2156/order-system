import 'package:flutter/material.dart';
import 'package:ordersystem/screens/components/clock.dart';

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

      body: ThisTime(),
    );
  }
}