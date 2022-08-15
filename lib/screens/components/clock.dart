import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ThisTime extends StatefulWidget {
  const ThisTime({Key? key}) : super(key: key);

  @override
  State<ThisTime> createState() => _TimeNow();

}

class _TimeNow extends State<ThisTime> {

  late Timer _timer;
  DateTime dateTime = DateTime.now();


  @override
  void initState(){
    super.initState();
    dateTime = DateTime.now();
    _timer = Timer.periodic(Duration (seconds: 1), setTime);
  }

  void setTime(Timer timer) {
    setState(() {
      dateTime = DateTime.now();
    });
  }

  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  static const weekday = ['星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Text(
          '${dateTime.hour}:${dateTime.minute.toString().padLeft(2,'0')}:${dateTime.second.toString().padLeft(2,'0')}',
          style: const TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w300,
            color: Colors.black54,
            decoration: TextDecoration.none,
            fontSize: 60,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

