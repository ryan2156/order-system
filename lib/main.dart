import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ordersystem/screens/homepage.dart';

void main() {
  FlutterError.onError= (FlutterErrorDetails details) {
    exit(1);
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

