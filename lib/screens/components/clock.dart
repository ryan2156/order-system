import 'package:clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/time.dart';

class ThisTime extends StatefulWidget {
  const ThisTime({Key? key}) : super(key: key);

  @override
  State<ThisTime> createState() => _TimeNow();

}

TimeOfDay _now = TimeOfDay.now();

class _TimeNow extends State<ThisTime> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('${_now.hour}'),
    );
  }

}

