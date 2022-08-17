import 'dart:async';
import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  State<Clock> createState() => _TimeNow();

}

class _TimeNow extends State<Clock> {

  late Timer _timer;
  DateTime dateTime = DateTime.now();


  @override
  void initState(){
    super.initState();
    dateTime = DateTime.now();
    _timer = Timer.periodic(const Duration (seconds: 1), setTime);
  }

  void setTime(Timer timer) {
    setState(() {
      dateTime = DateTime.now();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  static const weekday = ['星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 60),
      child: Text(
        '${dateTime.hour}:${dateTime.minute.toString()}',
        style: const TextStyle(
          fontFamily: 'OpenSans',
          fontWeight: FontWeight.w200,
          color: Colors.black54,
          decoration: TextDecoration.none,
          fontSize: 80,
        ),
      )
    );


  }
}

