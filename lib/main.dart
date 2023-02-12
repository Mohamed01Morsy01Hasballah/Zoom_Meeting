import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:zoom_metting/HomeScreen.dart';
final String localuserid=math.Random().nextInt(10000).toString();
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home:HomeScreen()
    );
  }
}

